library ieee;
use ieee.std_logic_1164.all;

entity AsubB is
port(	A,B		:	in	std_logic_vector(31 downto 0);
		S		:	out	std_logic_vector(31 downto 0);
AsubB1,AsubB2	:	out std_logic_vector(23 downto 0));
end AsubB;

architecture struc of AsubB is
component smallALU is
port ( a,b	:	in	std_logic_vector(7 downto 0);
		s	:	out	std_logic_vector(8 downto 0));
end component;

component compl2_8bit is 
port(	a	:	in	std_logic_vector(7 downto 0);
		y	:	out std_logic_vector(8 downto 0));
end component;

component mux2to1_8bit is
port (	A	:	in	std_logic_vector(7 downto 0);
		B	:	in	std_logic_vector(7 downto 0);
		S	:	in	std_logic;
		Y	:	out	std_logic_vector(7 downto 0));
end component;

component shiftbydif is
port(	input_f	:	in	std_logic_vector(23 downto 0);
		dif		:	in	std_logic_vector(7 downto 0);
		output_f:	out	std_logic_vector(23 downto 0));
end component;

component subtracter24bit is
port ( A,B	:	in	std_logic_vector(23 downto 0);
difference	:	out std_logic_vector(23 downto 0);
	borrow	:	out std_logic);
end component;

component compl2_24bit is 
port(	a	:	in	std_logic_vector(23 downto 0);
		y	:	out std_logic_vector(24 downto 0));
end component;

component mux2to1_24bit is
port (	a,b		:	in	std_logic_vector(23 downto 0);
		s		:	in	std_logic;
		y		:	out std_logic_vector(23 downto 0));
end component;

component firstbit1 is
port(	input_f	:	in	std_logic_vector(23 downto 0);
		output	:	out	std_logic_vector(4 downto 0));
end component;

component shiftleft24bit is
port (	a	:	in	std_logic_vector(23 downto 0);
		s	:	in	std_logic_vector(4 downto 0);
		y	:	out	std_logic_vector(23 downto 0));
end component;

component subtracter8bit is
port ( A,B	:	in	std_logic_vector(7 downto 0);
difference	:	out std_logic_vector(7 downto 0);
	borrow	:	out std_logic);
end component;

component mux2to1 is
port (	A	:	in	std_logic;
		B	:	in	std_logic;
		S	:	in	std_logic;
		Y	:	out std_logic);
end component;

signal	signA_shiftB,signshiftA_B,signex,signA_B,sel	:	std_logic;
signal sohieuchinh										:	std_logic_vector(4 downto 0);
signal	exA,exB,exdif,exAB,kqexAB						:	std_logic_vector(7 downto 0);
signal	exS,compl2_exS									:	std_logic_vector(8 downto 0);
signal sohieuchinh_8bit									:	std_logic_vector(7 downto 0);

signal	fracA,fracB,shiftA,shiftB,AshiftB,shiftAB		:	std_logic_vector(23 downto 0);
signal	sub1,sub2,AsubB1_1,AsubB2_1										:	std_logic_vector(23 downto 0);
signal	n_AshiftB,n_shiftAB								:	std_logic_vector(24 downto 0);
signal	kqA_B											:	std_logic_vector(31 downto 0);

begin
fracA	<=	'1' & A(22 downto 0);
fracB	<=	'1' & B(22 downto 0);

alu0	:	smallALU			port map(A(30 downto 23),B(30 downto 23),exS);
compl1	:	compl2_8bit			port map(exS(7 downto 0),compl2_exS);
mux2	:	mux2to1_8bit		port map(exS(7 downto 0),compl2_exS(7 downto 0),exS(8),exdif);

shift3	:	shiftbydif			port map(fracA,exdif,shiftA);
shift4	:	shiftbydif			port map(fracB,exdif,shiftB);

sub5	:	subtracter24bit		port map(fracA,shiftB,AshiftB,signA_shiftB);
compl6	:	compl2_24bit		port map(AshiftB,n_AshiftB);
mux7	:	mux2to1_24bit		port map(AshiftB,n_AshiftB(23 downto 0),signA_shiftB,sub1);

sub8	:	subtracter24bit		port map(shiftA,fracB,shiftAB,signshiftA_B);
compl9	:	compl2_24bit		port map(shiftAB,n_shiftAB);
mux10	:	mux2to1_24bit		port map(shiftAB,n_shiftAB(23 downto 0),signshiftA_B,sub2);

mux11	:	mux2to1_24bit		port map(sub1,sub2,exS(8),AsubB1_1);
AsubB1	<=	AsubB1_1;
first12	:	firstbit1			port map(AsubB1_1,sohieuchinh);
shift13	:	shiftleft24bit		port map(AsubB1_1,sohieuchinh,AsubB2_1);
AsubB2	<=	AsubB2_1;
mux14	:	mux2to1_8bit		port map(A(30 downto 23),B(30 downto 23),exS(8),exAB);
sohieuchinh_8bit	<=	"000" & sohieuchinh;
sub15	:	subtracter8bit		port map(exAB,sohieuchinh_8bit,kqexAB);

mux16	:	mux2to1				port map(signA_shiftB,signshiftA_B,exS(8),signA_B);

S	<=	signA_B & kqexAB & AsubB2_1(22 downto 0);

end struc;

 