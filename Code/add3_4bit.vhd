library ieee;
use ieee.std_logic_1164.all;

entity add3_4bit is
port(	A	:	in	std_logic_vector(3 downto 0);
		S	:	out std_logic_vector(3 downto 0));
end add3_4bit;

architecture struc of add3_4bit is
component adder4bit is
port ( a,b		:	in  std_logic_vector(3 downto 0);
		s		:	out std_logic_vector(3 downto 0);
		cout	:	out std_logic);
end component;

component mux2to1_4bit is
port (	A	:	in	std_logic_vector(3 downto 0);
		B	:	in	std_logic_vector(3 downto 0);
		S	:	in	std_logic;
		Y	:	out	std_logic_vector(3 downto 0));
end component;

signal t0		:	std_logic_vector(3 downto 0);
signal sign		:	std_logic;

begin

add0	:	adder4bit		port map(A,"1011",open,sign);

add1	:	adder4bit		port map(A,"0011",t0,open);
mux2	:	mux2to1_4bit	port map(A,t0,sign,S);

end struc;


