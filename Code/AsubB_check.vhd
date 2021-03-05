library ieee;
use ieee.std_logic_1164.all;

entity AsubB_check is
port(	A,B		:	in	std_logic_vector(31 downto 0);
		S_check	:	out	std_logic_vector(31 downto 0));
end AsubB_check;

architecture struc of AsubB_check is
component AsubB is
port(	A,B		:	in	std_logic_vector(31 downto 0);
		S		:	out	std_logic_vector(31 downto 0);
AsubB1,AsubB2	:	out std_logic_vector(23 downto 0));
end component;

component dacbiet is
port ( input	:	in	std_logic_vector(31 downto 0);
	inf,NaN,zero:	out std_logic);
end component;

component AequalB is
port(	A,B		:	in	std_logic_vector(31 downto 0);
		AeqB	:	out	std_logic);
end component;

component mux2to1_32bit is
port (	a,b		:	in	std_logic_vector(31 downto 0);
		s		:	in	std_logic;
		y		:	out std_logic_vector(31 downto 0));
end component;

signal	inf,NaN,zero,subB,subinf,AsubB_0,o0,o1,o2,o3,o4	:	std_logic_vector(31 downto 0);
signal	o5,o6,o7,o8,o9,o10								:	std_logic_vector(31 downto 0);
signal	infA,nanA,zeroA,infB,nanB,zeroB,AeqB			:	std_logic;

begin

inf		<=	b"01111111100000000000000000000000";
NaN		<=	b"01111111111111111111111111111111";
zero	<=	b"00000000000000000000000000000000";
subB	<=	'1' & B(30 downto 0);
subinf	<=	b"11111111100000000000000000000000";

sub0		:	AsubB			port map(A,B,AsubB_0,open,open);
dacbiet1	:	dacbiet			port map(A,infA,nanA,zeroA);
dacbiet2	:	dacbiet			port map(B,infB,nanB,zeroB);
equa3		:	AequalB 		port map(A,B,AeqB);

mux4		:	mux2to1_32bit	port map(AsubB_0,zero,AeqB,o0);
mux5		:	mux2to1_32bit	port map(o0,A,zeroB,o1);
mux6		:	mux2to1_32bit	port map(o1,subinf,infA,o2);
mux7		:	mux2to1_32bit	port map(o2,NaN,nanB,o3);
mux8		:	mux2to1_32bit	port map(inf,NaN,infB,o4);
mux9		:	mux2to1_32bit	port map(o4,NaN,nanB,o5);
mux10		:	mux2to1_32bit	port map(subB,zero,zeroB,o6);
mux11		:	mux2to1_32bit	port map(o6,subinf,infB,o7);
mux12		:	mux2to1_32bit	port map(o7,NaN,nanB,o8);
mux13		:	mux2to1_32bit	port map(o3,o5,infA,o9);
mux14		:	mux2to1_32bit	port map(o9,o8,zeroA,o10);
mux15		:	mux2to1_32bit	port map(o10,NaN,nanA,S_check);

end struc;
	
