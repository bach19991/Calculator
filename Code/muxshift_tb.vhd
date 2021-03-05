library ieee;
use IEEE.std_logic_1164.all;
entity muxshift_tb is -- empty entity
end muxshift_tb;

architecture tb of muxshift_tb is
component muxshift 
port(   input	:	in	std_logic_vector(24 downto 0);
	   shift	:	in	std_logic;
	shiftbit	:	in	std_logic;
	   output	:	out	std_logic_vector(24 downto 0));
end component;

signal t_input,t_output	 :	std_logic_vector(24 downto 0);
signal t_shift,t_shiftbit:	std_logic;

begin

t_testbench	:	muxshift port map (t_input,t_shift,t_shiftbit,t_output);

process

begin

	t_input	<=	b"1111111111111111111111111";
	t_shift <= '1';
	t_shiftbit <= '0';
	wait for 20ns;
	t_input <=  b"0000000000000000000000000";
	t_shift <= '1';
	t_shiftbit <= '1';
	wait for 20ns;
	t_input <=  b"1000000000000000000000001";
	t_shift <= '0';
	t_shiftbit <= '1';
	wait for 20ns;
	wait;
end process;
end tb;