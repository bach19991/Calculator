------------------------
--Subtracter for 8 bit--
------------------------

library ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity subtracter8bit is
port ( A,B	:	in	std_logic_vector(7 downto 0);
difference	:	out std_logic_vector(7 downto 0);
	borrow	:	out std_logic);
end subtracter8bit;

architecture struc of subtracter8bit is

signal buffer_c :	std_logic_vector(1 to 7);
component subtracter 
port (A, B, C : in  STD_LOGIC;

DIFFERENCE, BORROW : out  STD_LOGIC);
end component;

begin

stage0	:	subtracter port map (A(0),B(0),'0',difference(0),buffer_c(1));
stage1	:	subtracter port map (A(1),B(1),buffer_c(1),difference(1),buffer_c(2));
stage2	:	subtracter port map (A(2),B(2),buffer_c(2),difference(2),buffer_c(3));
stage3	:	subtracter port map (A(3),B(3),buffer_c(3),difference(3),buffer_c(4));
stage4	:	subtracter port map (A(4),B(4),buffer_c(4),difference(4),buffer_c(5));
stage5	:	subtracter port map (A(5),B(5),buffer_c(5),difference(5),buffer_c(6));
stage6	:	subtracter port map (A(6),B(6),buffer_c(6),difference(6),buffer_c(7));
stage7	:	subtracter port map (A(7),B(7),buffer_c(7),difference(7),borrow);

end struc;
