library ieee;
use ieee.std_logic_1164.all;

entity vedic_8bit is
port(	A,B		:	in	std_logic_vector(7 downto 0);
		C		:	out std_logic_vector(15 downto 0));
end vedic_8bit;

architecture struc of vedic_8bit is
component vedic_4bit is
port(	A,B		:	in	std_logic_vector(3 downto 0);
		C		:	out std_logic_vector(7 downto 0));
end component;

component adder8bit is
port ( a,b		:	in  std_logic_vector(7 downto 0);
		s		:	out std_logic_vector(7 downto 0);
		cout	:	out std_logic);
end component;

component adder12bit is
port(	a,b		:	in	std_logic_vector(11 downto 0);
		s		:	out std_logic_vector(11 downto 0);
		cout	:	out std_logic);
end component;

signal s0,s1,s2,s3,s5,s6		:	std_logic_vector(7 downto 0);
signal s7,s8,s9,s10,s11			:	std_logic_vector(11 downto 0);

begin
vedic0	:	vedic_4bit	port map(A(3 downto 0),B(3 downto 0),s0);
vedic1	:	vedic_4bit	port map(A(7 downto 4),B(3 downto 0),s1);
vedic2	:	vedic_4bit	port map(A(3 downto 0),B(7 downto 4),s2);
vedic3	:	vedic_4bit	port map(A(7 downto 4),B(7 downto 4),s3);

s5	<=	"0000" & s0(7 downto 4);

add4	:	adder8bit	port map(s1,s5,s6,open);
s7	<=	"0000"	&	s2;
s8	<=	s3	&	"0000";
add5	:	adder12bit	port map(s7,s8,s9,open);
s10	<=	"0000"	&	s6;
add6	:	adder12bit	port map(s10,s9,s11,open);

C	<=	s11	&	s0(3 downto 0);

end struc;

