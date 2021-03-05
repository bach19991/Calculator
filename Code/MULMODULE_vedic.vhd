library ieee;
use ieee.std_logic_1164.all;

entity MULMODULE_vedic is
port(	A,B		:	in	std_logic_vector(31 downto 0);
		PROD	:	out std_logic_vector(31 downto 0));
end MULMODULE_vedic;

architecture struc of MULMODULE_vedic is
component AmulB_vedic_check is
port(	A,B		:	in	std_logic_vector(31 downto 0);
		S_check	:	out std_logic_vector(31 downto 0));
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

signal AmulB,inf,NaN,zero,neginf,o1,o2,o3,o4	:	std_logic_vector(31 downto 0);
signal o5,o6,o7,o8,o9,o10,u1,u2					:	std_logic_vector(31 downto 0);
signal infA,nanA,zeroA,infB,nanB,zeroB			:	std_logic;

begin

inf		<=	b"01111111100000000000000000000000";
NaN		<=	b"01111111111111111111111111111111";
zero	<=	b"00000000000000000000000000000000";
neginf	<=	b"11111111100000000000000000000000";

mul0	:	AmulB_vedic_check	port map(A,B,AmulB);
dacbiet1:	dacbiet				port map(A,infA,nanA,zeroA);
dacbiet2:	dacbiet				port map(B,infB,nanB,zeroB);

mux3	:	mux2to1_32bit		port map(AmulB,zero,zeroB,o1);
mux4	:	mux2to1_32bit		port map(inf,neginf,A(31),u1);
mux5	:	mux2to1_32bit		port map(o1,u1,infB,o2);
mux6	:	mux2to1_32bit		port map(o2,NaN,nanB,o3);
mux7	:	mux2to1_32bit		port map(inf,neginf,B(31),u2);
mux8	:	mux2to1_32bit		port map(u2,NaN,zeroB,o4);
mux9	:	mux2to1_32bit		port map(o4,inf,infB,o5);
mux10	:	mux2to1_32bit		port map(o5,NaN,nanB,o6);
mux11	:	mux2to1_32bit		port map(zero,NaN,infB,o7);
mux12	:	mux2to1_32bit		port map(o7,NaN,nanB,o8);
mux13	:	mux2to1_32bit		port map(o3,o6,infA,o9);
mux14	:	mux2to1_32bit		port map(o9,o8,zeroA,o10);
mux15	:	mux2to1_32bit		port map(o10,NaN,nanA,PROD);

end struc;
