---------------------
--Compare component--
---------------------

library ieee;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.all;

entity compare8bit is
port(	input_e1		:	in	std_logic_vector(7 downto 0);
		input_e2		:	in	std_logic_vector(7 downto 0);
		output_1		:	out std_logic	;
		output_2		:	out	std_logic);
end compare8bit;

architecture struc of compare8bit is
component compare1bit
port ( 		input1	:	in	std_logic;
			input2	:	in	std_logic;
			input3	:	in	std_logic;
			output	:	out	std_logic);
end component;

signal GE	:	std_logic_vector(8 downto 0) := b"100000000";

begin

stage0	:	compare1bit	port map (input_e1(0),input_e2(0),GE(8),GE(0));
stage1	:	compare1bit	port map (input_e1(0),input_e2(0),GE(0),GE(1));
stage2	:	compare1bit	port map (input_e1(0),input_e2(0),GE(1),GE(2));
stage3	:	compare1bit	port map (input_e1(0),input_e2(0),GE(2),GE(3));
stage4	:	compare1bit	port map (input_e1(0),input_e2(0),GE(3),GE(4));
stage5	:	compare1bit	port map (input_e1(0),input_e2(0),GE(4),GE(5));
stage6	:	compare1bit	port map (input_e1(0),input_e2(0),GE(5),GE(6));
stage7	:	compare1bit	port map (input_e1(0),input_e2(0),GE(6),GE(7));
output_1 <= GE(7);
output_2 <= (not GE(7));
end struc;
