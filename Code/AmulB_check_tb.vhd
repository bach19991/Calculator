library ieee;
use ieee.std_logic_1164.all;

entity AmulB_check_tb is
end AmulB_check_tb;

architecture tb of AmulB_check_tb is
component AmulB_check is
port(	A,B		:	in	std_logic_vector(31 downto 0);
		S_check	:	out std_logic_vector(31 downto 0));
end component;

signal t_A,t_B,t_S	:	std_logic_vector(31 downto 0);

begin

t_tb	:	AmulB_check	port map(t_A,t_B,t_S);

process
begin
	t_A	<=	b"11000001111100000000000000000000"; -- -30
	t_B <=  b"01000011000101101000000000000000"; -- 150.5
		  --  11000101100011010001100000000000	 -- -4515
	wait for 20ns;
	wait;
end process;
end tb;