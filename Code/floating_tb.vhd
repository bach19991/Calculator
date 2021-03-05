library ieee;
use IEEE.std_logic_1164.all;
entity floating_tb is -- empty entity
end floating_tb;

architecture behv of floating_tb is
component floating is
port ( input	:	in	std_logic_vector(31 downto 0);
	   out_s	:	out std_logic;
	   out_e	:	out	std_logic_vector(7 downto 0);
	   out_f	:	out	std_logic_vector(24 downto 0));
end component;

signal t_input : std_logic_vector(31 downto 0);
signal t_out_s : std_logic;
signal t_out_e : std_logic_vector(7 downto 0);
signal t_out_f : std_logic_vector(24 downto 0);

begin

t_testbench	:	floating port map (t_input,t_out_s,t_out_e,t_out_f);

process

begin

	t_input <= b"11000010110010000000000000000000";
	wait for 20ns;
	t_input <= b"01100010111100000000000000000000";
	wait for 20ns;
	wait;
end process;
end behv;