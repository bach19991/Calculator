library ieee;
use ieee.std_logic_1164.all;

entity mux2to1 is
port (	A	:	in	std_logic;
		B	:	in	std_logic;
		S	:	in	std_logic;
		Y	:	out std_logic);
end mux2to1;

architecture behv of mux2to1 is

begin

Y <= ((not S) and A) or (S and B);

end behv;