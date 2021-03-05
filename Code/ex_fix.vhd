library ieee;
use ieee.std_logic_1164.all;

entity ex_fix is
port(	A	:	in	std_logic_vector(7 downto 0);
		C	:	out std_logic;
		S	:	out std_logic_vector(7 downto 0));
end ex_fix;

architecture struc of ex_fix is
component subtracter8bit is
port ( A,B	:	in	std_logic_vector(7 downto 0);
difference	:	out std_logic_vector(7 downto 0);
	borrow	:	out std_logic);
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

signal t0,t2	:	std_logic_vector(7 downto 0);
signal t1	:	std_logic_vector(8 downto 0);

begin

sub0	:	subtracter8bit	port map(A,"01111111",t0,sign);
compl1	:	compl2_8bit		port map(t0,t1);

mux2	:	mux2to1_8bit	port map(t0,t1(7 downto 0),sign,t2);
C		<=	sign;

end struc;


