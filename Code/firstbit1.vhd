library ieee;
use ieee.std_logic_1164.all;

entity firstbit1 is
port(	input_f	:	in	std_logic_vector(23 downto 0);
		output	:	out	std_logic_vector(4 downto 0));
end firstbit1;

architecture struc of firstbit1 is
component encoder24bit is
port(	a0,a1,a2,a3,a4,a5,a6,a7,a8	:	in	std_logic;
		a9,a10,a11,a12,a13,a14,a15	:	in	std_logic;
		a16,a17,a18,a19,a20,a21		:	in	std_logic;
		a22,a23						:	in	std_logic;
		s0,s1,s2,s3,s4				:	out	std_logic);
end component;

begin

firstbit	:	encoder24bit port map (input_f(23),input_f(22),input_f(21),input_f(20),input_f(19),input_f(18),input_f(17),input_f(16),input_f(15),input_f(14),
									   input_f(13),input_f(12),input_f(11),input_f(10),input_f( 9),input_f( 8),input_f( 7),input_f( 6),input_f( 5),input_f( 4),
									   input_f( 3),input_f( 2),input_f( 1),input_f( 0),output(0	 ),output(1  ),output(2  ),output(3  ),output(4  ));
									   
end struc;				