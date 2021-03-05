library ieee;
use ieee.std_logic_1164.all;

entity DIVMODULE is
port(	A,B			:	in	std_logic_vector(31 downto 0);
		S			:	out std_logic_vector(31 downto 0));
end DIVMODULE;

architecture struc of DIVMODULE is
component AdivB_check is
port(	A,B		:	in	std_logic_vector(31 downto 0);
		S		:	out std_logic_vector(31 downto 0));
end component;

component dacbiet is
port ( input	:	in	std_logic_vector(31 downto 0);
	inf,NaN,zero:	out std_logic);
end component;

component mux2to1_32bit is
port (	a,b		:	in	std_logic_vector(31 downto 0);
		s		:	in	std_logic;
		y		:	out std_logic_vector(31 downto 0));
end component;

signal AdivB,inf,NaN,zero,neginf,negzero,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,o11,u1,u2	:	std_logic_vector(31 downto 0);
signal infA,nanA,zeroA,infB,nanB,zeroB	:	std_logic;

begin

inf		<=	b"01111111100000000000000000000000";
NaN		<=	b"01111111111111111111111111111111";
zero 	<=	b"00000000000000000000000000000000";
neginf	<=	b"11111111100000000000000000000000";
negzero	<=	b"10000000000000000000000000000000";

div0	:	AdivB_check		port map(A,B,AdivB);
dacbiet1:	dacbiet			port map(A,infA,nanA,zeroA);
dacbiet2:	dacbiet			port map(B,infB,nanB,zeroB);

mux3	:	mux2to1_32bit	port map(AdivB,NaN,zeroB,o1);
mux4	:	mux2to1_32bit	port map(zero,negzero,A(31),u1);
mux5	:	mux2to1_32bit	port map(o1,u1,infB,o2);
mux6	:	mux2to1_32bit	port map(o2,NaN,nanB,o3);
mux7	:	mux2to1_32bit	port map(inf,neginf,B(31),u2);
mux8	:	mux2to1_32bit	port map(u2,NaN,zeroB,o4);
mux9	:	mux2to1_32bit	port map(o4,NaN,infB,o5);
mux10	:	mux2to1_32bit	port map(o5,NaN,nanB,o6);
mux11	:	mux2to1_32bit	port map(zero,NaN,zeroB,o7);
mux12	:	mux2to1_32bit	port map(o7,zero,infB,o8);
mux13	:	mux2to1_32bit	port map(o8,NaN,nanB,o9);
mux14	:	mux2to1_32bit	port map(o3,o6,infA,o10);
mux15	:	mux2to1_32bit	port map(o10,o9,zeroA,o11);
mux16	:	mux2to1_32bit	port map(o11,NaN,nanA,S);

end struc;
