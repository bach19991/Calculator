library ieee;
use ieee.std_logic_1164.all;

entity AdivB_check is
port(	A,B		:	in	std_logic_vector(31 downto 0);
		S		:	out std_logic_vector(31 downto 0));
end AdivB_check;

architecture struc of AdivB_check is
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

component AdivB is
port(	A,B		:	in	std_logic_vector(23 downto 0);
		S		:	out	std_logic_vector(24 downto 0));
end component;

component mux2to1_23bit is
port (	a,b		:	in	std_logic_vector(22 downto 0);
		s		:	in	std_logic;
		y		:	out std_logic_vector(22 downto 0));
end component;

signal sign,divsign					:	std_logic;
signal tab							:	std_logic_vector(4 downto 0);
signal ex1,exS1,exS2,exS3,exS4,exS	:	std_logic_vector(7 downto 0);
signal ex2							:	std_logic_vector(8 downto 0);
signal tadivb,ta,tb					:	std_logic_vector(23 downto 0);
signal adivb1						:	std_logic_vector(24 downto 0);

begin

ta	<=	'1' & A(22 downto 0);
tb	<=	'1'	& B(22 downto 0);

sub0	:	subtracter8bit	port map(B(30 downto 23),b"01111111",ex1,sign);
compl1	:	compl2_8bit		port map(ex1,ex2);
sub2	:	subtracter8bit	port map(A(30 downto 23),ex1,exS1,open);
add3	:	adder8bit		port map(A(30 downto 23),ex2(7 downto 0),exS2,open);
mux4	:	mux2to1_8bit	port map(exS1,exS2,sign,exS3);
sub5	:	subtracter8bit	port map(exS3,"00000001",exS4,open);

div6	:	AdivB			port map(ta,tb,adivb1);
mux7	:	mux2to1_8bit	port map(exS4,exS3,adivb1(24),exS);
mux8	:	mux2to1_23bit	port map(adivb1(22 downto 0),adivb1(23 downto 1),adivb1(24),tadivb(22 downto 0));

divsign	<=	A(31) xor B(31);
S		<=	divsign & exS & tadivb(22 downto 0);

end struc;
