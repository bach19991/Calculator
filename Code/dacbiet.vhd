library ieee;
use ieee.std_logic_1164.all;

entity dacbiet is
port ( input	:	in	std_logic_vector(31 downto 0);
	inf,NaN,zero:	out std_logic);
end dacbiet;

architecture struc of dacbiet is

component subtracter8bit is
port ( A,B	:	in	std_logic_vector(7 downto 0);
difference	:	out std_logic_vector(7 downto 0);
	borrow	:	out std_logic);
end component;

component mux2to1 is
port( 	A	:	in	std_logic;
		B	:	in	std_logic;
		S	:	in	std_logic;
		Y	:	out std_logic);
end component;

component subtracter23bit is
port(A,B	:	in	std_logic_vector(22 downto 0);
difference	:	out std_logic_vector(22 downto 0);
	borrow	:	out std_logic);
end component;

component adder8bit is
port( a,b		:	in  std_logic_vector(7 downto 0);
		s		:	out std_logic_vector(7 downto 0);
		cout	:	out std_logic);
end component;
signal ctp,ctp_out1,ctp_out2,cmu	:	std_logic;

begin

sub0	:	subtracter8bit 	port map (input(30 downto 23),b"00000001",open,zero);

sub1	:	subtracter23bit port map (input(22 downto 0),b"00000000000000000000001",open,ctp);
add2	:	adder8bit 		port map (input(30 downto 23),b"00000001",open,cmu);
mux3	:	mux2to1			port map ('0','1',ctp,ctp_out1);
mux4	:	mux2to1			port map ('0',ctp_out1,cmu,inf);

ctp_out2	<= not ctp;
mux5	:	mux2to1			port map ('0',ctp_out2,cmu,NaN);

end struc;

