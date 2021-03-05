library ieee;
use ieee.std_logic_1164.all;

entity vedic_16bit is
port(	A,B		:	in	std_logic_vector(15 downto 0);
		C		:	out std_logic_vector(31 downto 0));
end vedic_16bit;

architecture struc of vedic_16bit is
component vedic_8bit is
port(	A,B		:	in	std_logic_vector(7 downto 0);
		C		:	out std_logic_vector(15 downto 0));
end component;

component adder16bit is
port(	a,b		:	in	std_logic_vector(15 downto 0);
		s		:	out std_logic_vector(15 downto 0);
		cout	:	out std_logic);
end component;

component adder24bit is
port(	a,b		:	in	std_logic_vector(23 downto 0);
		s		:	out std_logic_vector(23 downto 0);
		cout	:	out std_logic);
end component;

signal s0,s1,s2,s3,s5,s4			:	std_logic_vector(15 downto 0);
signal s6,s7,s8,s9,s10				:	std_logic_vector(23 downto 0);


begin

vedic0	:	vedic_8bit	port map(A(7 downto 0),B(7 downto 0),s0);
vedic1	:	vedic_8bit	port map(A(15 downto 8),B(7 downto 0),s1);
vedic2	:	vedic_8bit	port map(A(7 downto 0),B(15 downto 8),s2);
vedic3	:	vedic_8bit	port map(A(15 downto 8),B(15 downto 8),s3);

s4	<=	"00000000"	&	s0(15 downto 8);
add5	:	adder16bit	port map(s1,s4,s5,open);
s6	<=	"00000000"	&	s2;
s7	<=	s3	&	"00000000";
add6	:	adder24bit	port map(s6,s7,s8,open);
s9	<=	"00000000"	&	s5;
add7	:	adder24bit	port map(s9,s8,s10,open);

C	<=	s10	&	s0(7 downto 0);

end struc;
