library ieee;
use ieee.std_logic_1164.all;

entity negAsubB_check	is
port(	A,B		:	in	std_logic_vector(31 downto 0);
		S		:	out	std_logic_vector(31 downto 0));
end negAsubB_check;

architecture struc of negAsubB_check is
component AaddB_check is
port(	A,B		:	in	std_logic_vector(31 downto 0);
		S_check	:	out std_logic_vector(31 downto 0));
end component;

signal negAsubB		:	std_logic;
signal AaB_check	:	std_logic_vector(31 downto 0);

begin

sub0	:	AaddB_check port map(A,B,AaB_check);

negAsubB <= not AaB_check(31);
S	     <= negAsubB & AaB_check(30 downto 0);

end struc;


