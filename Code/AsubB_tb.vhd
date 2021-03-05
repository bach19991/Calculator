library ieee;
use ieee.std_logic_1164.all;

entity AsubB_tb is
end AsubB_tb;

architecture tb of AsubB_tb is
component AsubB is
port(	A,B		:	in	std_logic_vector(31 downto 0);
		S		:	out	std_logic_vector(31 downto 0);
AsubB1,AsubB2	:	out std_logic_vector(23 downto 0));
end component;

signal	t_A,t_B,t_S			:	std_logic_vector(31 downto 0);
signal  t_AsubB1,t_AsubB2	:	std_logic_vector(23 downto 0);

begin

t_test		:	AsubB	port map(t_A,t_B,t_S,t_AsubB1,t_AsubB2);

process
begin

	t_A		<=	b"01000011000011000000000000000000"; --140
	t_B		<=  b"01000010111100010000000000000000"; --120.5
	wait for 20ns;
	--t_A		<=	
	--t_B		<=
	--wait for 20ns;
	wait;
end process;
end tb;
