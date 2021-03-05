library ieee;
use ieee.std_logic_1164.all;

entity AmulB_vedic is
port(	A,B		:	in	std_logic_vector(23 downto 0);
		S		:	out std_logic_vector(47 downto 0));
end AmulB_vedic;

architecture struc of AmulB_vedic is
component vedic_32bit is
port(	A,B		:	in	std_logic_vector(31 downto 0);
		C		:	out std_logic_vector(63 downto 0));
end component;

signal	va,vb		:	std_logic_vector(31 downto 0);
signal	vc			:	std_logic_vector(63 downto 0);

begin

va	<=	"00000000"	&	A;
vb	<=	"00000000"	&	B;

vedic0	:	vedic_32bit	port map(va,vb,vc);

S	<=	vc(47 downto 0);

end struc;
