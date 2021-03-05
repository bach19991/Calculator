library ieee;
use ieee.std_logic_1164.all;

entity AequalB is
port(	A,B		:	in	std_logic_vector(31 downto 0);
		AeqB	:	out	std_logic);
end AequalB;

architecture struc of AequalB is

component subtracter32bit is
port(A,B		:	in	std_logic_vector(31 downto 0);
		S		:	out	std_logic_vector(31 downto 0);
		Cout	:	out	std_logic);
end component;
signal temp		:	std_logic_vector(31 downto 0);
begin
temp	<= A xor B;
sub0	:	subtracter32bit port map(temp,b"00000000000000000000000000000001",open,AeqB);

end struc;
