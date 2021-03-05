library ieee;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ex_dif_tb is -- empty entity
end ex_dif_tb;

architecture behv of ex_dif_tb is

component exponent_dif 
port ( input1	:	in	std_logic_vector(7 downto 0);
	   input2	:	in	std_logic_vector(7 downto 0);
	   inputGT	:	in	std_logic;
	   output	:	out std_logic_vector(7 downto 0));
end component;

signal t_input1, t_input2 : std_logic_vector(7 downto 0);
signal t_inputGT		  :	std_logic;
signal t_output	:	std_logic_vector(7 downto 0);

begin

t_ex_dif	:	exponent_dif port map (t_input1,t_input2,t_inputGT,t_output);

process
begin

	--case 0
	t_input1 <= b"10001111"; 
	t_input2 <= b"10000111"; 
	t_inputGT <= '1';
	wait for 10ns;        
	t_input1 <= b"10001000"; 
	t_input2 <= b"10001111"; 
	t_inputGT <= '0';
	wait for 10ns;
	wait;
end process;
end behv;
	
