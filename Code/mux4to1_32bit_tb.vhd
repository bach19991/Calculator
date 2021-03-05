library ieee;
use IEEE.std_logic_1164.all;

entity mux4to1_32bit_tb is
end mux4to1_32bit_tb;

architecture tb of mux4to1_32bit_tb is
component mux4to1_32bit is
port(	a0,a1,a2,a3		:	in	std_logic_vector(31 downto 0);
		s0,s1			:	in std_logic;
		y				:	out std_logic_vector(31 downto 0));
end component;

signal t_a0,t_a1,t_a2,t_a3,t_y	:	std_logic_vector(31 downto 0);
signal t_s0,t_s1				:	std_logic;

begin 
t_tb	:	mux4to1_32bit	port map(t_a0,t_a1,t_a2,t_a3,t_s0,t_s1,t_y);

process
begin

	t_a0	<=	b"01000010110010000000000000000000"; --100
	t_a1	<=	b"01000010111100000000000000000000"; --120
	t_a2	<=	b"01000011000011000000000000000000"; --140
	t_a3	<=	b"01000011000101100000000000000000"; --150
	t_s0	<=	'1';
	t_s1	<=	'0';
	wait for 20ns;
	wait;
end process;
end tb;

