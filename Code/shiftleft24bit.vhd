library ieee;
use ieee.std_logic_1164.all;

entity shiftleft24bit is
port (	a	:	in	std_logic_vector(23 downto 0);
		s	:	in	std_logic_vector(4 downto 0);
		y	:	out	std_logic_vector(23 downto 0));
end shiftleft24bit;

architecture struc of shiftleft24bit is

component mux24to1 is
port(	A0,A1,A2,A3,A4,A5,A6,A7,A8,A9	:	IN	STD_LOGIC;
		A10,A11,A12,A13,A14,A15,A16		:	IN	STD_LOGIC;
		A17,A18,A19,A20,A21,A22,A23		:	in	std_logic;
		s0,s1,s2,s3,s4					:	in	std_logic;
		y								:	out	std_logic);
end component;

begin

mux23	: mux24to1 port map(a(23),a(22),a(21),a(20),a(19),a(18),a(17),a(16),a(15),a(14),a(13),a(12),a(11),a(10),a(9 ),a(8 ),a(7 ),a(6 ),a(5 ),a(4 ),a(3 ),a(2 ),a(1 ),a(0 ),s(0),s(1),s(2),s(3),s(4),y(23));
mux22	: mux24to1 port map(a(22),a(21),a(20),a(19),a(18),a(17),a(16),a(15),a(14),a(13),a(12),a(11),a(10),a(9 ),a(8 ),a(7 ),a(6 ),a(5 ),a(4 ),a(3 ),a(2 ),a(1 ),a(0 ),'0'  ,s(0),s(1),s(2),s(3),s(4),y(22));
mux21	: mux24to1 port map(a(21),a(20),a(19),a(18),a(17),a(16),a(15),a(14),a(13),a(12),a(11),a(10),a(9 ),a(8 ),a(7 ),a(6 ),a(5 ),a(4 ),a(3 ),a(2 ),a(1 ),a(0 ),'0'	 ,'0'  ,s(0),s(1),s(2),s(3),s(4),y(21));
mux20	: mux24to1 port map(a(20),a(19),a(18),a(17),a(16),a(15),a(14),a(13),a(12),a(11),a(10),a(9 ),a(8 ),a(7 ),a(6 ),a(5 ),a(4 ),a(3 ),a(2 ),a(1 ),a(0 ),'0'  ,'0'	 ,'0'  ,s(0),s(1),s(2),s(3),s(4),y(20));
mux19	: mux24to1 port map(a(19),a(18),a(17),a(16),a(15),a(14),a(13),a(12),a(11),a(10),a(9 ),a(8 ),a(7 ),a(6 ),a(5 ),a(4 ),a(3 ),a(2 ),a(1 ),a(0 ),'0'	 ,'0'  ,'0'	 ,'0'  ,s(0),s(1),s(2),s(3),s(4),y(19));
mux18	: mux24to1 port map(a(18),a(17),a(16),a(15),a(14),a(13),a(12),a(11),a(10),a(9 ),a(8 ),a(7 ),a(6 ),a(5 ),a(4 ),a(3 ),a(2 ),a(1 ),a(0 ),'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,s(0),s(1),s(2),s(3),s(4),y(18));
mux17	: mux24to1 port map(a(17),a(16),a(15),a(14),a(13),a(12),a(11),a(10),a(9 ),a(8 ),a(7 ),a(6 ),a(5 ),a(4 ),a(3 ),a(2 ),a(1 ),a(0 ),'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,s(0),s(1),s(2),s(3),s(4),y(17));
mux16	: mux24to1 port map(a(16),a(15),a(14),a(13),a(12),a(11),a(10),a(9 ),a(8 ),a(7 ),a(6 ),a(5 ),a(4 ),a(3 ),a(2 ),a(1 ),a(0 ),'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,s(0),s(1),s(2),s(3),s(4),y(16));
mux15	: mux24to1 port map(a(15),a(14),a(13),a(12),a(11),a(10),a(9 ),a(8 ),a(7 ),a(6 ),a(5 ),a(4 ),a(3 ),a(2 ),a(1 ),a(0 ),'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,s(0),s(1),s(2),s(3),s(4),y(15));
mux14	: mux24to1 port map(a(14),a(13),a(12),a(11),a(10),a(9 ),a(8 ),a(7 ),a(6 ),a(5 ),a(4 ),a(3 ),a(2 ),a(1 ),a(0 ),'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,s(0),s(1),s(2),s(3),s(4),y(14));
mux13	: mux24to1 port map(a(13),a(12),a(11),a(10),a(9 ),a(8 ),a(7 ),a(6 ),a(5 ),a(4 ),a(3 ),a(2 ),a(1 ),a(0 ),'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,s(0),s(1),s(2),s(3),s(4),y(13));
mux12	: mux24to1 port map(a(12),a(11),a(10),a(9 ),a(8 ),a(7 ),a(6 ),a(5 ),a(4 ),a(3 ),a(2 ),a(1 ),a(0 ),'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,s(0),s(1),s(2),s(3),s(4),y(12));
mux11	: mux24to1 port map(a(11),a(10),a(9 ),a(8 ),a(7 ),a(6 ),a(5 ),a(4 ),a(3 ),a(2 ),a(1 ),a(0 ),'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,s(0),s(1),s(2),s(3),s(4),y(11));
mux10	: mux24to1 port map(a(10),a(9 ),a(8 ),a(7 ),a(6 ),a(5 ),a(4 ),a(3 ),a(2 ),a(1 ),a(0 ),'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,s(0),s(1),s(2),s(3),s(4),y(10));
mux9 	: mux24to1 port map(a(9 ),a(8 ),a(7 ),a(6 ),a(5 ),a(4 ),a(3 ),a(2 ),a(1 ),a(0 ),'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,s(0),s(1),s(2),s(3),s(4),y(9 ));
mux8 	: mux24to1 port map(a(8 ),a(7 ),a(6 ),a(5 ),a(4 ),a(3 ),a(2 ),a(1 ),a(0 ),'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,s(0),s(1),s(2),s(3),s(4),y(8 ));
mux7 	: mux24to1 port map(a(7 ),a(6 ),a(5 ),a(4 ),a(3 ),a(2 ),a(1 ),a(0 ),'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,s(0),s(1),s(2),s(3),s(4),y(7 ));
mux6 	: mux24to1 port map(a(6 ),a(5 ),a(4 ),a(3 ),a(2 ),a(1 ),a(0 ),'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,s(0),s(1),s(2),s(3),s(4),y(6 ));
mux5 	: mux24to1 port map(a(5 ),a(4 ),a(3 ),a(2 ),a(1 ),a(0 ),'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,s(0),s(1),s(2),s(3),s(4),y(5 ));
mux4 	: mux24to1 port map(a(4 ),a(3 ),a(2 ),a(1 ),a(0 ),'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,s(0),s(1),s(2),s(3),s(4),y(4 ));
mux3 	: mux24to1 port map(a(3 ),a(2 ),a(1 ),a(0 ),'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,s(0),s(1),s(2),s(3),s(4),y(3 ));
mux2 	: mux24to1 port map(a(2 ),a(1 ),a(0 ),'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,s(0),s(1),s(2),s(3),s(4),y(2 ));
mux1 	: mux24to1 port map(a(1 ),a(0 ),'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,s(0),s(1),s(2),s(3),s(4),y(1 ));
mux0 	: mux24to1 port map(a(0 ),'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,'0'	 ,'0'  ,s(0),s(1),s(2),s(3),s(4),y(0 ));

end struc; 
