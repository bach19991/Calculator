library ieee;
use ieee.std_logic_1164.all;

entity AdivB_check_tb	is 
end AdivB_check_tb;

architecture tb of AdivB_check_tb is
component AdivB_check is
port(	A,B		:	in	std_logic_vector(31 downto 0);
		S		:	out std_logic_vector(31 downto 0));
end component;

signal t_A,t_B,t_S		:	std_logic_vector(31 downto 0);

begin 
t_tb	:	AdivB_check port map(t_A,t_B,t_S);

process
begin
	t_A	<=	b"01000001111100000000000000000000"; -- 30
	t_B	<=	b"01000010001000000000000000000000"; -- 40
		    --00111111010000000000000000000000   -- 0.75
	wait for 20ns;
	wait;
end process;
end tb;