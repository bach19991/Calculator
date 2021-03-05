library ieee;
use ieee.std_logic_1164.all;

entity shiftleft1bit is
port(	A	:	in	std_logic_vector(23 downto 0);
		Y	:	out std_logic_vector(24 downto 0));
end shiftleft1bit;

architecture behv of shiftleft1bit is

begin

Y	<=	A(23 downto 0) & '0';

end behv;

