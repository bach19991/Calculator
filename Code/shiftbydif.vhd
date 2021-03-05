library ieee;
use ieee.std_logic_1164.all;

entity shiftbydif is
port(	input_f	:	in	std_logic_vector(23 downto 0);
		dif		:	in	std_logic_vector(7 downto 0);
		output_f:	out	std_logic_vector(23 downto 0));
end shiftbydif;

architecture struc of shiftbydif is
component shiftright24bit is
port(	a	:	in	std_logic_vector(23 downto 0);
		s	:	in	std_logic_vector(4 downto 0);
		y	:	out	std_logic_vector(23 downto 0));
end component;

component mux2to1_24bit is
port (	a,b		:	in	std_logic_vector(23 downto 0);
		s		:	in	std_logic;
		y		:	out std_logic_vector(23 downto 0));
end component;
signal c1,c2,c3,c4,c5,c6,c7	:	std_logic_vector(23 downto 0);
signal c8,c9,c10,c11,c12	:	std_logic_vector(23 downto 0);

begin

shift0	:	shiftright24bit port map(input_f,b"00001",c1);
mux1  	: 	mux2to1_24bit 	port map(input_f,c1,dif(0),c2);

shift2	:	shiftright24bit port map(c2,b"00010",c3);
mux3  	: 	mux2to1_24bit	port map(c2,c3,dif(1),c4);

shift4	:	shiftright24bit port map(c4,b"00100",c5);
mux5  	: 	mux2to1_24bit	port map(c4,c5,dif(2),c6);

shift6	:	shiftright24bit port map(c6,b"01000",c7);
mux7  	: 	mux2to1_24bit	port map(c6,c7,dif(3),c8);

shift8	:	shiftright24bit port map(c8,b"10000",c9);
mux9  	: 	mux2to1_24bit	port map(c8,c9,dif(4),c10);

mux10	:	mux2to1_24bit	port map(c10,b"000000000000000000000000",dif(5),c11);
mux11	:	mux2to1_24bit	port map(c11,b"000000000000000000000000",dif(6),c12);
mux12	:	mux2to1_24bit	port map(c12,b"000000000000000000000000",dif(7),output_f);

end struc;

