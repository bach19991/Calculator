library ieee;
use ieee.std_logic_1164.all;

entity ALU is
port(	A,B		:	in	std_logic_vector(31 downto 0);
		sel		:	in	std_logic_vector(1 downto 0);
		S		:	out std_logic_vector(31 downto 0));
end ALU;

architecture struc of ALU is
component ADDMODULE is
port(	A,B	:	in	std_logic_vector(31 downto 0);
		Sum	:	out	std_logic_vector(31 downto 0));
end component;

component DIVMODULE is
port(	A,B			:	in	std_logic_vector(31 downto 0);
		S			:	out std_logic_vector(31 downto 0));
end component;

component MULMODULE is
port(	A,B		:	in	std_logic_vector(31 downto 0);
		PROD	:	out std_logic_vector(31 downto 0));
end component;

component SUBMODULE is
port(	A,B		:	in	std_logic_vector(31 downto 0);
	DIF			:	out std_logic_vector(31 downto 0));
end component;

component mux2to1_32bit is
port (	a,b		:	in	std_logic_vector(31 downto 0);
		s		:	in	std_logic;
		y		:	out std_logic_vector(31 downto 0));
end component;

signal s0,s1,s2,s3,st1,st2	:	std_logic_vector(31 downto 0);

begin

add0	:	ADDMODULE		port map(A,B,s0);
sub1	:	SUBMODULE		port map(A,B,s1);
mul2	:	MULMODULE		port map(A,B,s2);
div3	:	DIVMODULE		port map(A,B,s3);
mux4	:	mux2to1_32bit	port map(s0,s2,sel(1),st1);
mux5	:	mux2to1_32bit	port map(s1,s3,sel(1),st2);
mux6	:	mux2to1_32bit	port map(st1,st2,sel(0),S);

end struc;

