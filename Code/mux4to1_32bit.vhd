library ieee;
use IEEE.std_logic_1164.all;

entity mux4to1_32bit is
port(	a0,a1,a2,a3		:	in	std_logic_vector(31 downto 0);
		s0,s1			:	in std_logic;
		y				:	out std_logic_vector(31 downto 0));
end mux4to1_32bit;

architecture struc of mux4to1_32bit is
component mux2to1_32bit is
port (	a,b		:	in	std_logic_vector(31 downto 0);
		s		:	in	std_logic;
		y		:	out std_logic_vector(31 downto 0));
end component;
signal y1,y2	:	std_logic_vector(31 downto 0);

begin

mux0	:	mux2to1_32bit port map(a0,a1,s0,y1);
mux1	:	mux2to1_32bit port map(a2,a3,s0,y2);
mux2	:	mux2to1_32bit port map(y1,y2,s1,y);

end struc;
