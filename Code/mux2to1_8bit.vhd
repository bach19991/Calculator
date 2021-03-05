library ieee;
use ieee.std_logic_1164.all;

entity mux2to1_8bit is
port (	A	:	in	std_logic_vector(7 downto 0);
		B	:	in	std_logic_vector(7 downto 0);
		S	:	in	std_logic;
		Y	:	out	std_logic_vector(7 downto 0));
end mux2to1_8bit;

architecture struc of mux2to1_8bit is
component mux2to1 
port ( A,B,S	:	in	std_logic;
			Y	:	out	std_logic);
end component;

begin

stage0	:	mux2to1 port map (A(0),B(0),S,Y(0));
stage1	:	mux2to1 port map (A(1),B(1),S,Y(1));
stage2	:	mux2to1 port map (A(2),B(2),S,Y(2));
stage3	:	mux2to1 port map (A(3),B(3),S,Y(3));
stage4	:	mux2to1 port map (A(4),B(4),S,Y(4));
stage5	:	mux2to1 port map (A(5),B(5),S,Y(5));
stage6	:	mux2to1 port map (A(6),B(6),S,Y(6));
stage7	:	mux2to1 port map (A(7),B(7),S,Y(7));

end struc;
