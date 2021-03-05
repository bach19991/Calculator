library ieee;
use IEEE.std_logic_1164.all;
entity compare_tb is -- empty entity
end compare_tb;

architecture tb of compare_tb is
component compare8bit  
port(	input_e1		:	in	std_logic_vector(7 downto 0);
		input_e2		:	in	std_logic_vector(7 downto 0);
		output_1		:	out std_logic	;
		output_2		:	out	std_logic);
end component;

signal t_inpute1, t_inpute2 :	std_logic_vector(7 downto 0);
signal t_output1, t_output2	:	std_logic;

begin

t_testbench	:	compare8bit	port map (t_inpute1, t_inpute2, t_output1,t_output2);
process

begin
	--case 0
	t_inpute1	<= b"11000000"; --193
	t_inpute2 	<= b"11111111"; --130
 	wait for 10ns;
	t_inpute1 	<= b"11100000"; --42
	t_inpute2 	<= b"11000000"; --50
	wait for 10ns;
	wait;
end process;
end tb;

