library ieee;
use IEEE.std_logic_1164.all;

entity SUBMODULE is
port(	A,B		:	in	std_logic_vector(31 downto 0);
	DIF			:	out std_logic_vector(31 downto 0));
end SUBMODULE;

architecture struc of SUBMODULE is
component AaddB_check is
port(	A,B		:	in	std_logic_vector(31 downto 0);
		S_check	:	out std_logic_vector(31 downto 0));
end component;

component AsubB_check is
port(	A,B		:	in	std_logic_vector(31 downto 0);
		S_check	:	out	std_logic_vector(31 downto 0));
end component;

component negAaddB_check is
port(	A,B		:	in	std_logic_vector(31 downto 0);
	nAaB_check	:	out std_logic_vector(31 downto 0));
end component;

component negAsubB_check	is
port(	A,B		:	in	std_logic_vector(31 downto 0);
		S		:	out	std_logic_vector(31 downto 0));
end component;

component mux4to1_32bit is
port(	a0,a1,a2,a3		:	in	std_logic_vector(31 downto 0);
		s0,s1			:	in std_logic;
		y				:	out std_logic_vector(31 downto 0));
end component;

signal ta,tb,t0,t1,t2,t3	:	std_logic_vector(31 downto 0);

begin
ta	<=	'0'	&	A(30 downto 0);
tb	<=	'0'	&	B(30 downto 0);

add0	:	AaddB_check 	port map(ta,tb,t0);
sub1	:	AsubB_check		port map(ta,tb,t1);
add2	:	negAaddB_check	port map(ta,tb,t2);
sub3	:	negAsubB_check	port map(ta,tb,t3);
mux4	:	mux4to1_32bit	port map(t1,t3,t0,t2,A(31),B(31),DIF);

end struc;

