library ieee;
use ieee.std_logic_1164.all;

entity shiftleft1bit_12bit is
port(	A	:	in	std_logic_vector(11 downto 0);
		B	:	in	std_logic;
		S	:	out std_logic_vector(11 downto 0));
end shiftleft1bit_12bit;

architecture behv of shiftleft1bit_12bit is
signal t	:	std_logic_vector(12 downto 0);

begin

t	<=	A	&	B;
S	<=	t(11 downto 0);

end behv;
