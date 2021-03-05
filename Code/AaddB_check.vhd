library ieee;
use ieee.std_logic_1164.all;

entity AaddB_check is
port(	A,B		:	in	std_logic_vector(31 downto 0);
		S_check	:	out std_logic_vector(31 downto 0));
end AaddB_check;

architecture struc of AaddB_check is

component AaddB is
port(	A,B	:	in	std_logic_vector(31 downto 0);
		S	:	out	std_logic_vector(31 downto 0));
end component;

component dacbiet is
port ( input	:	in	std_logic_vector(31 downto 0);
	inf,NaN,zero:	out std_logic);
end component;

component  mux2to1_32bit is
port (	a,b		:	in	std_logic_vector(31 downto 0);
		s		:	in	std_logic;
		y		:	out std_logic_vector(31 downto 0));
end component;

signal AaddB0,inf0,NaN0,o1,o2,o3,o4,o5,o6	:	std_logic_vector(31 downto 0);
signal infA,nanA,zeroA,infB,nanB,zeroB		:	std_logic;

begin

inf0 <= b"01111111100000000000000000000000";
NaN0 <= b"01111111111111111111111111111111";

add0	:	AaddB 			port map(A,B,AaddB0);
dacbiet1:	dacbiet 		port map(A,infA,nanA,zeroA);
dacbiet2:	dacbiet 		port map(B,infB,nanB,zeroB);

mux3	:	mux2to1_32bit 	port map(AaddB0,A,zeroB,o1);
mux4	:	mux2to1_32bit	port map(o1,inf0,infB,o2);
mux5	:	mux2to1_32bit	port map(o2,NaN0,nanB,o3);
mux6	:	mux2to1_32bit	port map(inf0,NaN0,nanB,o4);
mux7 	:	mux2to1_32bit	port map(o3,o4,infA,o5);
mux8	:	mux2to1_32bit	port map(o5,B,zeroA,o6);
mux9	:	mux2to1_32bit	port map(o6,NaN0,nanA,S_check);

end struc;
