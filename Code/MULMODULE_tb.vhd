library ieee;
use ieee.std_logic_1164.all;

entity MULMODULE_tb	is
end MULMODULE_tb;

architecture tb of MULMODULE_tb is
component MULMODULE is
port(	A,B		:	in	std_logic_vector(31 downto 0);
		PROD	:	out std_logic_vector(31 downto 0));
end component;

signal t_A,t_B,t_S		:	std_logic_vector(31 downto 0);

begin 

t_tb		:	MULMODULE port map(t_A,t_B,t_S);

process
begin

	t_A	<= b"01000011010010000000000000000000"; -- 200
	t_B <= b"01000000011000000000000000000000"; -- 3.5
		  -- 0 10001000 01011110000000000000000	-- 700
	wait for 20ns;
	wait;
end process;
end tb;
