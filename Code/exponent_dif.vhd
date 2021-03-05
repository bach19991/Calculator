--------------------------------
--Component exponent different--
--------------------------------

library ieee;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use work.all;

entity exponent_dif is
port ( input1	:	in	std_logic_vector(7 downto 0);
	   input2	:	in	std_logic_vector(7 downto 0);
	   inputGT	:	in	std_logic;
	   output	:	out std_logic_vector(7 downto 0));
end exponent_dif;

architecture struct of exponent_dif is

signal c_in	:	std_logic	:= '0';
signal c_out:	std_logic;
signal buffer_out_gt: std_logic_vector(7 downto 0);
signal buffer_out_lt: std_logic_vector(7 downto 0);

component subtracter8bit 
port ( A,B	:	in	std_logic_vector(7 downto 0);
		C	:	in std_logic;
difference	:	out std_logic_vector(7 downto 0);
	borrow	:	out std_logic);
end component;

component mux7bit
port (	A	:	in	std_logic_vector(7 downto 0);
		B	:	in	std_logic_vector(7 downto 0);
		S	:	in	std_logic;
		Y	:	out	std_logic_vector(7 downto 0));
end component;

begin

sub0	:	subtracter8bit port map (input1,input2,c_in,buffer_out_gt,c_out);
sub1	:	subtracter8bit port map (input2,input1,c_in,buffer_out_lt,c_out);

mux0	:	mux7bit port map (buffer_out_lt,buffer_out_gt,inputGT,output);

end struct;
