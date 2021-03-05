library ieee;
use ieee.std_logic_1164.all;

entity mux2to1_32bit is
port (	a,b		:	in	std_logic_vector(31 downto 0);
		s		:	in	std_logic;
		y		:	out std_logic_vector(31 downto 0));
end mux2to1_32bit;

architecture behv of mux2to1_32bit is
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
mux12	:	mux2to1 port map (a(12),b(12),s,y(12));
mux13	:	mux2to1 port map (a(13),b(13),s,y(13));
mux14	:	mux2to1 port map (a(14),b(14),s,y(14));
mux15	:	mux2to1 port map (a(15),b(15),s,y(15));
mux16	:	mux2to1 port map (a(16),b(16),s,y(16));
mux17	:	mux2to1 port map (a(17),b(17),s,y(17));
mux18	:	mux2to1 port map (a(18),b(18),s,y(18));
mux19	:	mux2to1 port map (a(19),b(19),s,y(19));
mux20	:	mux2to1 port map (a(20),b(20),s,y(20));
mux21	:	mux2to1 port map (a(21),b(21),s,y(21));
mux22	:	mux2to1 port map (a(22),b(22),s,y(22));
mux23	:	mux2to1 port map (a(23),b(23),s,y(23));
mux24	:	mux2to1 port map (a(24),b(24),s,y(24));
mux25	:	mux2to1 port map (a(25),b(25),s,y(25));
mux26	:	mux2to1 port map (a(26),b(26),s,y(26));
mux27	:	mux2to1 port map (a(27),b(27),s,y(27));
mux28	:	mux2to1 port map (a(28),b(28),s,y(28));
mux29	:	mux2to1 port map (a(29),b(29),s,y(29));
mux30	:	mux2to1 port map (a(30),b(30),s,y(30));
mux31	:	mux2to1 port map (a(31),b(31),s,y(31));


end behv;
