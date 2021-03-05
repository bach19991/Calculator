library ieee;
use ieee.std_logic_1164.all;

entity AaddB_check_tb	is
end AaddB_check_tb;

architecture tb of AaddB_check_tb is
component  AaddB_check is
port(	A,B		:	in	std_logic_vector(31 downto 0);
		S_check	:	out std_logic_vector(31 downto 0));
end component;

signal t_A,t_B,t_S		:	std_logic_vector(31 downto 0);

begin 

t_tb		:	AaddB_check port map(t_A,t_B,t_S);

process
begin

	t_A	<= b"01000011000011000000000000000000"; --140
	t_B <= b"01000010111100010000000000000000"; --120.5
	wait for 20ns;
	wait;
end process;
end tb;