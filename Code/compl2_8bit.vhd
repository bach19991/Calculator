library ieee;
use IEEE.STD_LOGIC_1164.ALL;

entity compl2_8bit is 
port(	a	:	in	std_logic_vector(7 downto 0);
		y	:	out std_logic_vector(8 downto 0));
end compl2_8bit;

architecture struc of compl2_8bit is
component adder8bit is
port(a,b		:	in  std_logic_vector(7 downto 0);
		s		:	out std_logic_vector(7 downto 0);
		cout	:	out std_logic);
end component;
signal a_i	:	std_logic_vector(7 downto 0);

begin
a_i	<=	not a;
sub0	:	adder8bit port map (a_i,b"00000001",y(7 downto 0),y(8));

end struc;


