library ieee;
use IEEE.std_logic_1164.all;
entity testbench is -- empty entity
end testbench;

architecture tb of testbench is
component ALU is
port(	A,B		:	in	std_logic_vector(31 downto 0);
		sel		:	in	std_logic_vector(1 downto 0);
		S		:	out std_logic_vector(31 downto 0));
end component;

signal t_A,t_B,t_S		:	std_logic_vector(31 downto 0);
signal t_sel			:	std_logic_vector(1 downto 0);

begin

t_test		:	ALU	port map(t_A,t_B,t_sel,t_S);

process

begin

	t_A		<=	b"01000011011100000000000000000000"; 
	t_B		<=	b"01000011011100000000000000000000"; 	
	t_sel	<=	b"00";
	wait for 50ns;
	t_A		<=	b"11000011011100000000000000000000";
	t_B		<=	b"01000011100101111000110011001101";
	t_sel	<=	b"01";
	wait for 50ns;
	t_A		<=	b"11000011010010000000000000000000";
	t_B		<=	b"11000011010010000000000000000000";
	t_sel	<=	b"10";
	wait for 50ns;
	t_A		<=	b"01000011000011110000000000000000";
	t_B		<=	b"11000010000000000000000000000000";
	t_sel	<=	b"11";
	wait for 50ns;
	wait;

end process;
end tb;