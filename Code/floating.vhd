-------------------------
--Floating point number--
-------------------------

library ieee;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;

entity floating is
port ( input	:	in	std_logic_vector(31 downto 0);
	   out_s	:	out std_logic;
	   out_e	:	out	std_logic_vector(7 downto 0);
	   out_f	:	out	std_logic_vector(24 downto 0));
end floating;

architecture behavioral of floating is

signal temp		:	std_logic_vector(24 downto 0);
begin

out_s <= input(31);

out_e <= input(30 downto 23);

temp(24 downto 23) <= b"01";
temp(22 downto 0)  <= input(22 downto 0);
out_f <= temp;
	
end behavioral;