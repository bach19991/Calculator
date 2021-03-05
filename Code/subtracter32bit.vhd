library ieee;
use ieee.std_logic_1164.all;

entity subtracter32bit is
port( A,B	:	in	std_logic_vector(31 downto 0);
		S	:	out	std_logic_vector(31 downto 0);
		Cout	:	out	std_logic);
end subtracter32bit;

architecture struc of subtracter32bit is

component subtracter is

Port ( A, B, C : in  STD_LOGIC;
DIFFERENCE, BORROW : out  STD_LOGIC);

end component;
signal C	:	std_logic_vector(30 downto 0);

begin

sub0	:	subtracter port map(A(0 ),B(0 ),'0'	 ,S(0 ),C(0));
sub1 	:	subtracter port map(A(1 ),B(1 ),C(0 ),S(1 ),C(1 ));
sub2 	:	subtracter port map(A(2 ),B(2 ),C(1 ),S(2 ),C(2 ));
sub3 	:	subtracter port map(A(3 ),B(3 ),C(2 ),S(3 ),C(3 ));
sub4 	:	subtracter port map(A(4 ),B(4 ),C(3 ),S(4 ),C(4 ));
sub5 	:	subtracter port map(A(5 ),B(5 ),C(4 ),S(5 ),C(5 ));
sub6 	:	subtracter port map(A(6 ),B(6 ),C(5 ),S(6 ),C(6 ));
sub7 	:	subtracter port map(A(7 ),B(7 ),C(6 ),S(7 ),C(7 ));
sub8 	:	subtracter port map(A(8 ),B(8 ),C(7 ),S(8 ),C(8 ));
sub9 	:	subtracter port map(A(9 ),B(9 ),C(8 ),S(9 ),C(9 ));
sub10	:	subtracter port map(A(10),B(10),C(9 ),S(10),C(10));
sub11	:	subtracter port map(A(11),B(11),C(10),S(11),C(11));
sub12	:	subtracter port map(A(12),B(12),C(11),S(12),C(12));
sub13	:	subtracter port map(A(13),B(13),C(12),S(13),C(13));
sub14	:	subtracter port map(A(14),B(14),C(13),S(14),C(14));
sub15	:	subtracter port map(A(15),B(15),C(14),S(15),C(15));
sub16	:	subtracter port map(A(16),B(16),C(15),S(16),C(16));
sub17	:	subtracter port map(A(17),B(17),C(16),S(17),C(17));
sub18	:	subtracter port map(A(18),B(18),C(17),S(18),C(18));
sub19	:	subtracter port map(A(19),B(19),C(18),S(19),C(19));
sub20	:	subtracter port map(A(20),B(20),C(19),S(20),C(20));
sub21	:	subtracter port map(A(21),B(21),C(20),S(21),C(21));
sub22	:	subtracter port map(A(22),B(22),C(21),S(22),C(22));
sub23	:	subtracter port map(A(23),B(23),C(22),S(23),C(23));
sub24	:	subtracter port map(A(24),B(24),C(23),S(24),C(24));
sub25	:	subtracter port map(A(25),B(25),C(24),S(25),C(25));
sub26	:	subtracter port map(A(26),B(26),C(25),S(26),C(26));
sub27	:	subtracter port map(A(27),B(27),C(26),S(27),C(27));
sub28	:	subtracter port map(A(28),B(28),C(27),S(28),C(28));
sub29	:	subtracter port map(A(29),B(29),C(28),S(29),C(29));
sub30	:	subtracter port map(A(30),B(30),C(29),S(30),C(30));
sub31	:	subtracter port map(A(31),B(31),C(30),S(31),Cout);

end struc;
                                              