library ieee;
use ieee.std_logic_1164.all;

entity AmulB_vedic_check is
port(	A,B		:	in	std_logic_vector(31 downto 0);
		S_check	:	out std_logic_vector(31 downto 0));
end AmulB_vedic_check;

architecture struc of AmulB_vedic_check is
component subtracter8bit is
port ( A,B	:	in	std_logic_vector(7 downto 0);
difference	:	out std_logic_vector(7 downto 0);
	borrow	:	out std_logic);
end component;

component compl2_8bit is 
port(	a	:	in	std_logic_vector(7 downto 0);
		y	:	out std_logic_vector(8 downto 0));
end component;

component adder8bit is
port ( a,b		:	in  std_logic_vector(7 downto 0);
		s		:	out std_logic_vector(7 downto 0);
		cout	:	out std_logic);
end component;

component mux2to1_8bit is
port (	A	:	in	std_logic_vector(7 downto 0);
		B	:	in	std_logic_vector(7 downto 0);
		S	:	in	std_logic;
		Y	:	out	std_logic_vector(7 downto 0));
end component;

component mux2to1_23bit is
port (	a,b		:	in	std_logic_vector(22 downto 0);
		s		:	in	std_logic;
		y		:	out std_logic_vector(22 downto 0));
end component;

component AmulB_vedic is
port(	A,B		:	in	std_logic_vector(23 downto 0);
		S		:	out std_logic_vector(47 downto 0));
end component;

signal sign,signprod,ct					:	std_logic;
signal exS,exS1,exS3,exS4				:	std_logic_vector(7 downto 0);
signal exS2								:	std_logic_vector(8 downto 0);
signal ta,tb							:	std_logic_vector(23 downto 0);
signal tf_0,tf_1,tf						:	std_logic_vector(22 downto 0);
signal ts								:	std_logic_vector(47 downto 0);
signal exS3_0,exS4_0,exS3_1,exS4_1		:	std_logic_vector(7 downto 0);

begin

ta	<=	'1'	&	A(22 downto 0);
tb	<=	'1'	&	B(22 downto 0);

mul0	:	AmulB_vedic		port map(ta,tb,ts);

sub1	:	subtracter8bit	port map(A(30 downto 23),b"01111111",exS1,sign);
compl2	:	compl2_8bit		port map(exS1,exS2);
add3	:	adder8bit		port map(exS1,B(30 downto 23),exS3_0,open);
add4	:	adder8bit		port map(exS3_0,b"00000001",exS3_1,open);
mux5	:	mux2to1_8bit	port map(exS3_0,exS3_1,ts(47),exS3);

sub6	:	subtracter8bit	port map(B(30 downto 23),exS2(7 downto 0),exS4_0,open);
add7	:	adder8bit		port map(exS4_0,b"00000001",exS4_1,open);
mux8	:	mux2to1_8bit	port map(exS4_0,exS4_1,ts(47),exS4);

mux9	:	mux2to1_8bit	port map(exS3,exS4,sign,exS);
tf_0	<=	ts(45 downto 23);
tf_1	<=	ts(46 downto 24);

mux10	:	mux2to1_23bit	port map(tf_0,tf_1,ts(47),tf); 

signprod	<=	A(31) xor B(31);
S_check		<=	signprod & exS & tf;

end struc;

