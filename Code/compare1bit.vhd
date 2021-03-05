library ieee;
use IEEE.std_logic_1164.all;

entity compare1bit is
port(	input1	:	in	std_logic;
		input2	:	in	std_logic;
		input3	:	in	std_logic;
		output	:	out	std_logic);
end compare1bit;

architecture behv of compare1bit is

begin
output	<=	(input1 and (not input2)) or ((input1 xnor input2) and input3);
end behv;