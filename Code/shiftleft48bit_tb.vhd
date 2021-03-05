library ieee;
use ieee.std_logic_1164.all;

entity shiftleft48bit_tb is
end shiftleft48bit_tb;

architecture tb of shiftleft48bit_tb is
component shiftleft48bit is
port (	a	:	in	std_logic_vector(23 downto 0);
		s	:	in	std_logic_vector(5 downto 0);
		y	:	out	std_logic_vector(47 downto 0));
end component;

signal t_a		:	std_logic_vector(23 downto 0);
signal t_s		:	std_logic_vector(5 downto 0);
signal t_y		:	std_logic_vector(47 downto 0);

begin
t_tb	:	shiftleft48bit port map(t_a,t_s,t_y);

process 
begin 
	t_a		<=	"111111111111111111111101";
	t_s		<=	"000001";
	wait for 20ns;
	wait;
end process;
end tb;
