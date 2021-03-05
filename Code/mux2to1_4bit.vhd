library ieee;
use ieee.std_logic_1164.all;

entity mux2to1_4bit is
port (	A	:	in	std_logic_vector(3 downto 0);
		B	:	in	std_logic_vector(3 downto 0);
		S	:	in	std_logic;
		Y	:	out	std_logic_vector(3 downto 0));
end mux2to1_4bit;

architecture struc of mux2to1_4bit is
component mux2to1 
port ( A,B,S	:	in	std_logic;
			Y	:	out	std_logic);
end component;

begin

stage0	:	mux2to1 port map (A(0),B(0),S,Y(0));
stage1	:	mux2to1 port map (A(1),B(1),S,Y(1));
stage2	:	mux2to1 port map (A(2),B(2),S,Y(2));
stage3	:	mux2to1 port map (A(3),B(3),S,Y(3));

end struc;
