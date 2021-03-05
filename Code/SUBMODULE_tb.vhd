library ieee;
use ieee.std_logic_1164.all;

entity SUBMODULE_tb	is
end SUBMODULE_tb;

architecture tb of SUBMODULE_tb is
component SUBMODULE is
port(	A,B		:	in	std_logic_vector(31 downto 0);
	DIF			:	out std_logic_vector(31 downto 0));
end component;

signal t_A,t_B,t_S		:	std_logic_vector(31 downto 0);

begin 

t_tb		:	SUBMODULE port map(t_A,t_B,t_S);

process
begin

	t_A	<= b"11000011000011000000000000000000"; --  -140
	t_B <= b"01000010111100010000000000000000"; --  120.5
	wait for 20ns;
	wait;
end process;
end tb;
