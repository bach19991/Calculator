library ieee;
use ieee.std_logic_1164.all;

entity adder48bit is
port(	a,b		:	in	std_logic_vector(47 downto 0);
		s		:	out std_logic_vector(47 downto 0);
		cout	:	out	std_logic);
end adder48bit;

architecture struc of adder48bit is
component fulladder IS
  port(
        X:    IN  std_logic;
        Y:    IN  Std_logic;
        Cin:  IN  std_logic;
        S:    OUT std_logic;
        Cout: OUT std_logic
      );
end component;

signal temp	:	std_logic_vector(46 downto 0);

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
add31	:	fulladder port map (a(31),b(31),temp(30),s(31),temp(31));
add32	:	fulladder port map (a(32),b(32),temp(31),s(32),temp(32));
add33	:	fulladder port map (a(33),b(33),temp(32),s(33),temp(33));
add34	:	fulladder port map (a(34),b(34),temp(33),s(34),temp(34));
add35	:	fulladder port map (a(35),b(35),temp(34),s(35),temp(35));
add36	:	fulladder port map (a(36),b(36),temp(35),s(36),temp(36));
add37	:	fulladder port map (a(37),b(37),temp(36),s(37),temp(37));
add38	:	fulladder port map (a(38),b(38),temp(37),s(38),temp(38));
add39	:	fulladder port map (a(39),b(39),temp(38),s(39),temp(39));
add40	:	fulladder port map (a(40),b(40),temp(39),s(40),temp(40));
add41	:	fulladder port map (a(41),b(41),temp(40),s(41),temp(41));
add42	:	fulladder port map (a(42),b(42),temp(41),s(42),temp(42));
add43	:	fulladder port map (a(43),b(43),temp(42),s(43),temp(43));
add44	:	fulladder port map (a(44),b(44),temp(43),s(44),temp(44));
add45	:	fulladder port map (a(45),b(45),temp(44),s(45),temp(45));
add46	:	fulladder port map (a(46),b(46),temp(45),s(46),temp(46));
add47	:	fulladder port map (a(47),b(47),temp(46),s(47),cout	   );

end struc;
   