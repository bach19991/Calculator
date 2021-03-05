library ieee;
use ieee.std_logic_1164.all;

entity shiftleft_tb is
end shiftleft_tb;

architecture tb of shiftleft_tb is
component shiftleft24bit is
port (	a	:	in	std_logic_vector(23 downto 0);
		s	:	in	std_logic_vector(4 downto 0);
		y	:	out	std_logic_vector(23 downto 0));
end component;

signal t_a,t_y			:	std_logic_vector(23 downto 0);
signal t_s				:	std_logic_vector(4 downto 0);

begin
t_test		:	shiftleft24bit	port map(t_a,t_s,t_y);

process
begin

	t_a	<=	b"111111111111111111111011";
	t_s	<=	b"00011";
	wait for 20ns;
	wait;
end process;
end tb;
