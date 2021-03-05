library ieee;
use IEEE.std_logic_1164.all;
entity mux_tb is -- empty entity
end mux_tb;

architecture tb of mux_tb is
component mux24to1 is
port(	a0,a1,a2,a3,a4,a5,a6,a7,a8,a9	:	in	std_logic;
		a10,a11,a12,a13,a14,a15,a16		:	in	std_logic;
		a17,a18,a19,a20,a21,a22,a23		:	in	std_logic;
		s0,s1,s2,s3,s4					:	in	std_logic;
		y								:	out	std_logic);
end component;

signal 		ta0,ta1,ta2,ta3,ta4,ta5,ta6,ta7,ta8,ta9	:	std_logic;
signal		ta10,ta11,ta12,ta13,ta14,ta15,ta16		:	std_logic;
signal		ta17,ta18,ta19,ta20,ta21,ta22,ta23		:	std_logic;
signal		ts0,ts1,ts2,ts3,ts4					:	std_logic;
signal		ty								:	std_logic;

begin 
t_tb		:	mux24to1	port map(ta0,ta1,ta2,ta3,ta4,ta5,ta6,ta7,ta8
									,ta9,ta10,ta11,ta12,ta13,ta14,ta15,ta16,ta17
									,ta18,ta19,ta20,ta21,ta22,ta23,ts0,ts1,ts2,ts3
									,ts4,ty);

process
begin
ta0 	 <= '1' ;
ta1      <= '1' ;
ta2      <= '1' ;
ta3      <= '1' ;
ta4      <= '1' ;
ta5      <= '1' ;
ta6      <= '1' ;
ta7      <= '1' ;
ta8      <= '1' ;
ta9      <= '1' ;
ta10     <= '1' ;
ta11     <= '1' ;
ta12     <= '1' ;
ta13     <= '1' ;
ta14     <= '1' ;
ta15     <= '1' ;
ta16     <= '1' ;
ta17     <= '1' ;
ta18     <= '1' ;
ta19     <= '1' ;
ta20     <= '1' ;
ta21     <= '1' ;
ta22     <= '1' ;
ta23     <= '1' ;
ts0		 <= '1' ;
ts1      <= '1' ;
ts2      <= '0' ;
ts3      <= '0' ;
ts4      <= '0' ;
wait for 20ns;
wait;
end process;
end tb;
