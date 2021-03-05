library ieee;
use ieee.std_logic_1164.all;
use work.all;

entity adder6bit is
port ( a,b		:	in  std_logic_vector(5 downto 0);
		s		:	out std_logic_vector(5 downto 0);
		cout	:	out std_logic);
end adder6bit;

architecture struc of adder6bit is

component fulladder is
port(	X:    IN  std_logic;
        Y:    IN  Std_logic;
        Cin:  IN  std_logic;
        S:    OUT std_logic;
        Cout: OUT std_logic);
end component;
signal c	:	std_logic_vector(4 downto 0);

begin

add0	:	fulladder port map (a(0),b(0),'0' ,s(0),c(0));
add1	:	fulladder port map (a(1),b(1),c(0),s(1),c(1));
add2	:	fulladder port map (a(2),b(2),c(1),s(2),c(2));
add3	:	fulladder port map (a(3),b(3),c(2),s(3),c(3));
add4	:	fulladder port map (a(4),b(4),c(3),s(4),c(4));
add5	:	fulladder port map (a(5),b(5),c(4),s(5),cout);

end struc;
                                            