library ieee;
use ieee.std_logic_1164.all;

entity adder32bit is
port(	a,b		:	in	std_logic_vector(31 downto 0);
		s		:	out std_logic_vector(31 downto 0);
		cout	:	out	std_logic);
end adder32bit;

architecture struc of adder32bit is
component fulladder IS
  port(
        X:    IN  std_logic;
        Y:    IN  Std_logic;
        Cin:  IN  std_logic;
        S:    OUT std_logic;
        Cout: OUT std_logic
      );
end component;

signal temp	:	std_logic_vector(30 downto 0);

begin

add0	:	fulladder port map (a(0 ),b(0 ),'0'		,s(0 ),temp(0));
add1 	:	fulladder port map (a(1 ),b(1 ),temp(0 ),s(1 ),temp(1 ));
add2 	:	fulladder port map (a(2 ),b(2 ),temp(1 ),s(2 ),temp(2 ));
add3 	:	fulladder port map (a(3 ),b(3 ),temp(2 ),s(3 ),temp(3 ));
add4 	:	fulladder port map (a(4 ),b(4 ),temp(3 ),s(4 ),temp(4 ));
add5 	:	fulladder port map (a(5 ),b(5 ),temp(4 ),s(5 ),temp(5 ));
add6 	:	fulladder port map (a(6 ),b(6 ),temp(5 ),s(6 ),temp(6 ));
add7 	:	fulladder port map (a(7 ),b(7 ),temp(6 ),s(7 ),temp(7 ));
add8 	:	fulladder port map (a(8 ),b(8 ),temp(7 ),s(8 ),temp(8 ));
add9 	:	fulladder port map (a(9 ),b(9 ),temp(8 ),s(9 ),temp(9 ));
add10	:	fulladder port map (a(10),b(10),temp(9 ),s(10),temp(10));
add11	:	fulladder port map (a(11),b(11),temp(10),s(11),temp(11));
add12	:	fulladder port map (a(12),b(12),temp(11),s(12),temp(12));
add13	:	fulladder port map (a(13),b(13),temp(12),s(13),temp(13));
add14	:	fulladder port map (a(14),b(14),temp(13),s(14),temp(14));
add15	:	fulladder port map (a(15),b(15),temp(14),s(15),temp(15));
add16	:	fulladder port map (a(16),b(16),temp(15),s(16),temp(16));
add17	:	fulladder port map (a(17),b(17),temp(16),s(17),temp(17));
add18	:	fulladder port map (a(18),b(18),temp(17),s(18),temp(18));
add19	:	fulladder port map (a(19),b(19),temp(18),s(19),temp(19));
add20	:	fulladder port map (a(20),b(20),temp(19),s(20),temp(20));
add21	:	fulladder port map (a(21),b(21),temp(20),s(21),temp(21));
add22	:	fulladder port map (a(22),b(22),temp(21),s(22),temp(22));
add23	:	fulladder port map (a(23),b(23),temp(22),s(23),temp(23));
add24	:	fulladder port map (a(24),b(24),temp(23),s(24),temp(24));
add25	:	fulladder port map (a(25),b(25),temp(24),s(25),temp(25));
add26	:	fulladder port map (a(26),b(26),temp(25),s(26),temp(26));
add27	:	fulladder port map (a(27),b(27),temp(26),s(27),temp(27));
add28	:	fulladder port map (a(28),b(28),temp(27),s(28),temp(28));
add29	:	fulladder port map (a(29),b(29),temp(28),s(29),temp(29));
add30	:	fulladder port map (a(30),b(30),temp(29),s(30),temp(30));
add31	:	fulladder port map (a(31),b(31),temp(30),s(31),cout	   );


end struc;
   