library ieee;
use ieee.std_logic_1164.all;

entity mux2to1_12bit is
port (	a,b		:	in	std_logic_vector(11 downto 0);
		s		:	in	std_logic;
		y		:	out std_logic_vector(11 downto 0));
end mux2to1_12bit;

architecture struc of mux2to1_12bit is
component mux2to1 is
port(	A	:	in	std_logic;
		B	:	in	std_logic;
		S	:	in	std_logic;
		Y	:	out std_logic);
end component;

begin

mux0	:	mux2to1 port map (a(0 ),b(0 ),s,y(0 ));
mux1 	:	mux2to1 port map (a(1 ),b(1 ),s,y(1 ));
mux2 	:	mux2to1 port map (a(2 ),b(2 ),s,y(2 ));
mux3 	:	mux2to1 port map (a(3 ),b(3 ),s,y(3 ));
mux4 	:	mux2to1 port map (a(4 ),b(4 ),s,y(4 ));
mux5 	:	mux2to1 port map (a(5 ),b(5 ),s,y(5 ));
mux6 	:	mux2to1 port map (a(6 ),b(6 ),s,y(6 ));
mux7 	:	mux2to1 port map (a(7 ),b(7 ),s,y(7 ));
mux8 	:	mux2to1 port map (a(8 ),b(8 ),s,y(8 ));
mux9 	:	mux2to1 port map (a(9 ),b(9 ),s,y(9 ));
mux10	:	mux2to1 port map (a(10),b(10),s,y(10));
mux11	:	mux2to1 port map (a(11),b(11),s,y(11));


end struc;
