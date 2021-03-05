library ieee;
use ieee.std_logic_1164.all;

entity AdivB_tb	is 
end AdivB_tb;

architecture tb of AdivB_tb is
component AdivB is
port(	A,B		:	in	std_logic_vector(23 downto 0);
		S		:	out	std_logic_vector(24 downto 0));
end component;

signal t_A,t_B		:	std_logic_vector(23 downto 0);
signal t_S			:	std_logic_vector(24 downto 0);

begin 
t_tb	:	AdivB port map(t_A,t_B,t_S);

process
begin
	t_A	<=	b"100101100000000000000000";
	t_B	<=	b"101000000000000000000000";
	wait for 20ns;
	wait;
end process;
end tb;