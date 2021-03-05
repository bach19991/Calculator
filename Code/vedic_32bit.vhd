library ieee;
use ieee.std_logic_1164.all;

entity vedic_32bit is
port(	A,B		:	in	std_logic_vector(31 downto 0);
		C		:	out std_logic_vector(63 downto 0));
end vedic_32bit;

architecture struc of vedic_32bit is
component vedic_16bit is
port(	A,B		:	in	std_logic_vector(15 downto 0);
		C		:	out std_logic_vector(31 downto 0));
end component;

component adder32bit is
port(	a,b		:	in	std_logic_vector(31 downto 0);
		s		:	out std_logic_vector(31 downto 0);
		cout	:	out	std_logic);
end component;

component adder48bit is
port(	a,b		:	in	std_logic_vector(47 downto 0);
		s		:	out std_logic_vector(47 downto 0);
		cout	:	out	std_logic);
end component;

signal s0,s1,s2,s3,s4,s5		:	std_logic_vector(31 downto 0);
signal s6,s7,s8,s9,s10			:	std_logic_vector(47 downto 0);

begin

vedic0	:	vedic_16bit	port map(A(15 downto 0),B(15 downto 0),s0);
vedic1	:	vedic_16bit	port map(A(31 downto 16),B(15 downto 0),s1);
vedic2	:	vedic_16bit	port map(A(15 downto 0),B(31 downto 16),s2);
vedic3	:	vedic_16bit	port map(A(31 downto 16),B(31 downto 16),s3);

s4	<=	"0000000000000000"	&	s0(31 downto 16);
add4	:	adder32bit	port map(s1,s4,s5,open);
s6	<=	"0000000000000000"	&	s2;
s7	<=	s3	&	"0000000000000000";
add5	:	adder48bit	port map(s6,s7,s8,open);
s9	<=	"0000000000000000"	&	s5;
add6	:	adder48bit	port map(s8,s9,s10,open);

C	<=	s10	&	s0(15 downto 0);

end struc;
