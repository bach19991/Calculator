library ieee;
use IEEE.STD_LOGIC_1164.ALL;

entity subtracter24bit is
port ( A,B	:	in	std_logic_vector(23 downto 0);
difference	:	out std_logic_vector(23 downto 0);
	borrow	:	out std_logic);
end subtracter24bit;

architecture struc of subtracter24bit is

signal buffer_c :	std_logic_vector(23 downto 1);
component subtracter 
port (A, B, C : in  STD_LOGIC;

DIFFERENCE, BORROW : out  STD_LOGIC);
end component;

begin

stage0	:	subtracter port map (A(0 ),B(0 ),'0'		 ,difference(0 ),buffer_c(1 ));
stage1	:	subtracter port map (A(1 ),B(1 ),buffer_c(1 ),difference(1 ),buffer_c(2 ));
stage2	:	subtracter port map (A(2 ),B(2 ),buffer_c(2 ),difference(2 ),buffer_c(3 ));
stage3	:	subtracter port map (A(3 ),B(3 ),buffer_c(3 ),difference(3 ),buffer_c(4 ));
stage4	:	subtracter port map (A(4 ),B(4 ),buffer_c(4 ),difference(4 ),buffer_c(5 ));
stage5	:	subtracter port map (A(5 ),B(5 ),buffer_c(5 ),difference(5 ),buffer_c(6 ));
stage6	:	subtracter port map (A(6 ),B(6 ),buffer_c(6 ),difference(6 ),buffer_c(7 ));
stage7	:	subtracter port map (A(7 ),B(7 ),buffer_c(7 ),difference(7 ),buffer_c(8 ));
stage8 	:	subtracter port map (A(8 ),B(8 ),buffer_c(8 ),difference(8 ),buffer_c(9 ));
stage9 	:	subtracter port map (A(9 ),B(9 ),buffer_c(9 ),difference(9 ),buffer_c(10));
stage10	:	subtracter port map (A(10),B(10),buffer_c(10),difference(10),buffer_c(11));
stage11	:	subtracter port map (A(11),B(11),buffer_c(11),difference(11),buffer_c(12));
stage12	:	subtracter port map (A(12),B(12),buffer_c(12),difference(12),buffer_c(13));
stage13	:	subtracter port map (A(13),B(13),buffer_c(13),difference(13),buffer_c(14));
stage14	:	subtracter port map (A(14),B(14),buffer_c(14),difference(14),buffer_c(15));
stage15	:	subtracter port map (A(15),B(15),buffer_c(15),difference(15),buffer_c(16));
stage16	:	subtracter port map (A(16),B(16),buffer_c(16),difference(16),buffer_c(17));
stage17	:	subtracter port map (A(17),B(17),buffer_c(17),difference(17),buffer_c(18));
stage18	:	subtracter port map (A(18),B(18),buffer_c(18),difference(18),buffer_c(19));
stage19	:	subtracter port map (A(19),B(19),buffer_c(19),difference(19),buffer_c(20));
stage20	:	subtracter port map (A(20),B(20),buffer_c(20),difference(20),buffer_c(21));
stage21	:	subtracter port map (A(21),B(21),buffer_c(21),difference(21),buffer_c(22));
stage22	:	subtracter port map (A(22),B(22),buffer_c(22),difference(22),buffer_c(23));
stage23	:	subtracter port map (A(23),B(23),buffer_c(23),difference(23),borrow);


end struc;
