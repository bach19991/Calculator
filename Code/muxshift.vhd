library ieee;
use IEEE.std_logic_1164.all;

entity muxshift is 
port ( input	:	in	std_logic_vector(24 downto 0);
	   shift	:	in	std_logic;
	shiftbit	:	in	std_logic;
	   output	:	out	std_logic_vector(24 downto 0));
end muxshift;

architecture struc of muxshift is

component mux2to1
port(	A	:	in	std_logic;
		B	:	in	std_logic;
		S	:	in	std_logic;
		Y	:	out std_logic);
end component;

begin

mux0	:	mux2to1 port map (input(0 ),input(1 ),shift,output(0 ));
mux1	:	mux2to1 port map (input(1 ),input(2 ),shift,output(1 ));
mux2	:	mux2to1 port map (input(2 ),input(3 ),shift,output(2 ));
mux3	:	mux2to1 port map (input(3 ),input(4 ),shift,output(3 ));
mux4	:	mux2to1 port map (input(4 ),input(5 ),shift,output(4 ));
mux5	:	mux2to1 port map (input(5 ),input(6 ),shift,output(5 ));
mux6	:	mux2to1 port map (input(6 ),input(7 ),shift,output(6 ));
mux7	:	mux2to1 port map (input(7 ),input(8 ),shift,output(7 ));
mux8	:	mux2to1 port map (input(8 ),input(9 ),shift,output(8 ));
mux9	:	mux2to1 port map (input(9 ),input(10),shift,output(9 ));
mux10	:	mux2to1 port map (input(10),input(11),shift,output(10));
mux11	:	mux2to1 port map (input(11),input(12),shift,output(11));
mux12	:	mux2to1 port map (input(12),input(13),shift,output(12));
mux13	:	mux2to1 port map (input(13),input(14),shift,output(13));
mux14	:	mux2to1 port map (input(14),input(15),shift,output(14));
mux15	:	mux2to1 port map (input(15),input(16),shift,output(15));
mux16	:	mux2to1 port map (input(16),input(17),shift,output(16));
mux17	:	mux2to1 port map (input(17),input(18),shift,output(17));
mux18	:	mux2to1 port map (input(18),input(19),shift,output(18));
mux19	:	mux2to1 port map (input(19),input(20),shift,output(19));
mux20	:	mux2to1 port map (input(20),input(21),shift,output(20));
mux21	:	mux2to1 port map (input(21),input(22),shift,output(21));
mux22	:	mux2to1 port map (input(22),input(23),shift,output(22));
mux23	:	mux2to1 port map (input(23),input(24),shift,output(23));
mux24	:	mux2to1 port map (input(24),shiftbit ,shift,output(24));

end struc;

