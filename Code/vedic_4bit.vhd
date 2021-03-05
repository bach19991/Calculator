library ieee;
use ieee.std_logic_1164.all;

entity vedic_4bit is
port(	A,B		:	in	std_logic_vector(3 downto 0);
		C		:	out std_logic_vector(7 downto 0));
end vedic_4bit;

architecture struc of vedic_4bit is
component adder4bit is
port ( a,b		:	in  std_logic_vector(3 downto 0);
		s		:	out std_logic_vector(3 downto 0);
		cout	:	out std_logic);
end component;

component adder6bit is
port ( a,b		:	in  std_logic_vector(5 downto 0);
		s		:	out std_logic_vector(5 downto 0);
		cout	:	out std_logic);
end component;

component vedic_2bit is
port(	A,B		:	in	std_logic_vector(1 downto 0);
		C		:	out std_logic_vector(3 downto 0));
end component;

signal s0,s1,s2,s3,s4,s7	:	std_logic_vector(3 downto 0);
signal s5,s6,s8,s9,s10		:	std_logic_vector(5 downto 0);



begin

vedic0	:	vedic_2bit	port map(A(1 downto 0),B(1 downto 0),s0);
vedic1	:	vedic_2bit	port map(A(3 downto 2),B(1 downto 0),s1);
vedic2	:	vedic_2bit	port map(A(1 downto 0),B(3 downto 2),s2);
vedic3	:	vedic_2bit	port map(A(3 downto 2),B(3 downto 2),s3);

s4	<=	"00"	&	s0(3 downto 2);

adder4	:	adder4bit	port map(s1,s4,s7,open);

s5	<=	"00"	&	s2(3 downto 0);
s6	<=	s3(3 downto 0)	&	"00";
s10	<=	"00"	&	s7;
adder5	:	adder6bit	port map(s5,s6,s8,open);
adder6	:	adder6bit	port map(s10,s8,s9,open);

C		<=		s9	&	s0(1 downto 0);

end struc;

