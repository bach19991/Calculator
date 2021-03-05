library ieee;
use ieee.std_logic_1164.all;

entity negAaddB_check is
port(	A,B		:	in	std_logic_vector(31 downto 0);
	nAaB_check	:	out std_logic_vector(31 downto 0));
end negAaddB_check;

architecture struc of negAaddB_check is
component AsubB_check is
port(	A,B		:	in	std_logic_vector(31 downto 0);
		S_check	:	out	std_logic_vector(31 downto 0));
end component;

signal AsB_check	:	std_logic_vector(31 downto 0);
signal tn			:	std_logic;

begin

sub0		:	AsubB_check	port map(A,B,AsB_check);

tn			<=	not AsB_check(31);
nAaB_check	<=	tn & AsB_check(30 downto 0);

end struc;

