library ieee;
use ieee.std_logic_1164.all;

entity AaddB is
port(	A,B	:	in	std_logic_vector(31 downto 0);
		S	:	out	std_logic_vector(31 downto 0));
end AaddB;

architecture struc of AaddB is
component smallALU is
port(	a,b	:	in	std_logic_vector(7 downto 0);
		s	:	out	std_logic_vector(8 downto 0));
end component;

component compl2_8bit is
port(	a	:	in	std_logic_vector(7 downto 0);
		y	:	out std_logic_vector(8 downto 0));
end component;

component mux2to1_8bit is
port(	A	:	in	std_logic_vector(7 downto 0);
		B	:	in	std_logic_vector(7 downto 0);
		S	:	in	std_logic;
		Y	:	out	std_logic_vector(7 downto 0));
end component;

component mux2to1_24bit is
port(	a,b		:	in	std_logic_vector(23 downto 0);
		s		:	in	std_logic;
		y		:	out std_logic_vector(23 downto 0));
end component;

component shiftbydif is
port(	input_f	:	in	std_logic_vector(23 downto 0);
		dif		:	in	std_logic_vector(7 downto 0);
		output_f:	out	std_logic_vector(23 downto 0));
end component;

component adder24bit is
port(	a,b		:	in	std_logic_vector(23 downto 0);
		s		:	out std_logic_vector(23 downto 0);
		cout	:	out std_logic);
end component;

component mux2to1_23bit is
port(	a,b		:	in	std_logic_vector(22 downto 0);
		s		:	in	std_logic;
		y		:	out std_logic_vector(22 downto 0));
end component;

component adder8bit is
port ( a,b		:	in  std_logic_vector(7 downto 0);
		s		:	out std_logic_vector(7 downto 0);
		cout	:	out std_logic);
end component;

signal exA,exB,exdif,bigex,ex_add1,exSum				:	std_logic_vector(7 downto 0);
signal exS,exS_compl2									:	std_logic_vector(8 downto 0);
signal fracSum											:	std_logic_vector(22 downto 0);
signal fracA,fracB,num_smallex,num_bigex,numShifted,Sum	:	std_logic_vector(23 downto 0);
signal sign 											:	std_logic;
begin
fracA	<=	'1' & A(22 downto 0);
fracB	<=	'1' & B(22 downto 0);

alu0		:	smallALU 	  port map (A(30 downto 23),B(30 downto 23),exS);
compl2_1	:	compl2_8bit	  port map (exS(7 downto 0),exS_compl2);
mux2		:	mux2to1_8bit  port map (exS(7 downto 0),exS_compl2(7 downto 0),exS(8),exdif);

mux3		:	mux2to1_24bit port map (fracB,fracA,exS(8),num_smallex);
mux4		:	mux2to1_24bit port map (fracA,fracB,exS(8),num_bigex);

shift5		:	shiftbydif	  port map (num_smallex	,exdif,numShifted);
add6		:	adder24bit	  port map (num_bigex,numShifted,Sum,sign);

mux7 		:	mux2to1_23bit port map (Sum(22 downto 0),Sum(23 downto 1),sign,fracSum);
mux8		:	mux2to1_8bit  port map (A(30 downto 23),B(30 downto 23),exS(8),bigex);
add9		:	adder8bit	  port map (bigex,b"00000001",ex_add1,open);
mux10		:	mux2to1_8bit  port map (bigex,ex_add1,sign,exSum);

S	<=	'0' & exSum & fracSum;

end struc;

