library ieee;
use ieee.std_logic_1164.all;

entity binarytobcd_8bit is
port(	A	:	in	std_logic_vector(7 downto 0);
		S	:	out std_logic_vector(11 downto 0));
end binarytobcd_8bit;

architecture struc of binarytobcd_8bit is
component shiftleft1bit_12bit is
port(	A	:	in	std_logic_vector(11 downto 0);
		B	:	in	std_logic;
		S	:	out std_logic_vector(11 downto 0));
end component;

component add3_4bit is
port(	A	:	in	std_logic_vector(3 downto 0);
		S	:	out std_logic_vector(3 downto 0));
end component;

signal t0,t1,t2,t3,t4			:	std_logic_vector(11 downto 0);
signal u0,u1,u2,u3,u4,u5,u6		:	std_logic_vector(11 downto 0);
signal v0,v1,v2,v3,v4,v5		:	std_logic_vector(3 downto 0);

begin
t0	<=	"000000000000";
shift0	:	shiftleft1bit_12bit	port map(t0,A(7),u0);
shift1	:	shiftleft1bit_12bit	port map(u0,A(6),u1);
shift2	:	shiftleft1bit_12bit	port map(u1,A(5),u2);
add3	:	add3_4bit			port map(u2(3 downto 0),v0);
t1	<=	u2(11 downto 4) & v0(3 downto 0);
shift4	:	shiftleft1bit_12bit	port map(t1,A(4),u3);
add5	:	add3_4bit			port map(u3(3 downto 0),v1);
t2	<=	u3(11 downto 4) & v1;
shift6	:	shiftleft1bit_12bit	port map(t2,A(3),u4);
shift7	:	shiftleft1bit_12bit	port map(u4,A(2),u5);
add8	:	add3_4bit			port map(u5(3 downto 0),v2);
add9	:	add3_4bit			port map(u5(7 downto 4),v3);
t3	<=	u5(11 downto 8) & v3 & v2;
shift10	:	shiftleft1bit_12bit	port map(t3,A(1),u6);
add11	:	add3_4bit			port map(u6(3 downto 0),v4);
add12	:	add3_4bit			port map(u6(7 downto 4),v5);
t4	<=	u6(11 downto 8) & v5 & v4;
shift13	:	shiftleft1bit_12bit port map(t4,A(0),S);

end struc;