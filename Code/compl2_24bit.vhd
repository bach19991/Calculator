library ieee;
use IEEE.STD_LOGIC_1164.ALL;

entity compl2_24bit is 
port(	a	:	in	std_logic_vector(23 downto 0);
		y	:	out std_logic_vector(24 downto 0));
end compl2_24bit;

architecture struc of compl2_24bit is
component adder24bit is
port(	a,b		:	in	std_logic_vector(23 downto 0);
		s		:	out std_logic_vector(23 downto 0);
		cout	:	out std_logic);
end component;
signal a_i	:	std_logic_vector(23 downto 0);

begin
a_i	<=	not a;
sub0	:	adder24bit port map (a_i,b"000000000000000000000001",y(23 downto 0),y(24));

end struc;


