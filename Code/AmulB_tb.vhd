library ieee;
use ieee.std_logic_1164.all;

entity AmulB_tb	is
end AmulB_tb;

architecture tb of AmulB_tb is
component AmulB is
port(	A,B		:	in	std_logic_vector(23 downto 0);
		S		:	out std_logic_vector(47 downto 0));
end component;

signal t_A,t_B		:	std_logic_vector(23 downto 0);
signal t_S			:	std_logic_vector(47 downto 0);

begin 

t_tb		:	AmulB port map(t_A,t_B,t_S);

process
begin

	t_A	<= b"110010000000000000000000"; --  200
	t_B <= b"111000000000000000000000"; --  3.5
	wait for 20ns;
	wait;
end process;
end tb;