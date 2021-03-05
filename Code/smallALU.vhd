library ieee;
use ieee.std_logic_1164.all;

entity smallALU is
port ( a,b	:	in	std_logic_vector(7 downto 0);
		s	:	out	std_logic_vector(8 downto 0));
end smallALU;

architecture struc of smallALU is
component subtracter8bit is
port(A,B	:	in	std_logic_vector(7 downto 0);
difference	:	out std_logic_vector(7 downto 0);
	borrow	:	out std_logic);
end component;

begin
sub0	:	subtracter8bit port map(a,b,s(7 downto 0),s(8));
end struc;

