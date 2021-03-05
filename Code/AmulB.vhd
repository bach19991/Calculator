library ieee;
use ieee.std_logic_1164.all;

entity AmulB is
port(	A,B		:	in	std_logic_vector(23 downto 0);
		S		:	out std_logic_vector(47 downto 0));
end AmulB;

architecture struc of AmulB is
component shiftleft48bit is
port (	a	:	in	std_logic_vector(23 downto 0);
		s	:	in	std_logic_vector(5 downto 0);
		y	:	out	std_logic_vector(47 downto 0));
end component;

component adder48bit is
port(	a,b		:	in	std_logic_vector(47 downto 0);
		s		:	out std_logic_vector(47 downto 0);
		cout	:	out	std_logic);
end component;

component mux2to1_48bit is
port (	a,b		:	in	std_logic_vector(47 downto 0);
		s		:	in	std_logic;
		y		:	out std_logic_vector(47 downto 0));
end component;


signal t0,t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12			:	std_logic_vector(47 downto 0);
signal t13,t14,t15,t16,t17,t18,t19,t20,t21,t22,t23,t24	:	std_logic_vector(47 downto 0);
signal u0,u1,u2,u3,u4,u5,u6,u7,u8,u9,u10,u11,u12,u13,u14	:	std_logic_vector(47 downto 0);
signal u15,u16,u17,u18,u19,u20,u21,u22,u23,u24			:	std_logic_vector(47 downto 0);
signal s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14	:	std_logic_vector(47 downto 0);
signal s15,s16,s17,s18,s19,s20,s21,s22					:	std_logic_vector(47 downto 0);
signal bit0_48bit											:	std_logic_vector(47 downto 0):= (others => '0');

begin
shift0	:	shiftleft48bit	port map(A,b"000000",t0);
mux1	:	mux2to1_48bit	port map(bit0_48bit,t0,B(0),u0);

shift1	:	shiftleft48bit	port map(A,b"000001",t1);
mux2 	:	mux2to1_48bit	port map(bit0_48bit,t1,B(1),u1);
add3	:	adder48bit		port map(u0,u1,s1,open);

shift4	:	shiftleft48bit	port map(A,b"000010",t2);
mux5	:	mux2to1_48bit	port map(bit0_48bit,t2,B(2),u2);
add6	:	adder48bit		port map(s1,u2,s2,open);

shift7	:	shiftleft48bit	port map(A,b"000011",t3);
mux8	:	mux2to1_48bit	port map(bit0_48bit,t3,B(3),u3);
add9	:	adder48bit		port map(s2,u2,s3,open);

shift10	:	shiftleft48bit	port map(A,b"000100",t4);
mux11	:	mux2to1_48bit	port map(bit0_48bit,t4,B(4),u4);
add12	:	adder48bit		port map(s3,u4,s4,open);

shift13	:	shiftleft48bit	port map(A,b"000101",t5);
mux14	:	mux2to1_48bit	port map(bit0_48bit,t5,B(5),u5);
add15	:	adder48bit		port map(s4,u5,s5,open);

shift16	:	shiftleft48bit	port map(A,b"000110",t6);
mux17	:	mux2to1_48bit	port map(bit0_48bit,t6,B(6),u6);
add18	:	adder48bit		port map(s5,u6,s6,open);

shift19	:	shiftleft48bit	port map(A,b"000111",t7);
mux20	:	mux2to1_48bit	port map(bit0_48bit,t7,B(7),u7);
add21	:	adder48bit		port map(s6,u7,s7,open);

shift22	:	shiftleft48bit	port map(A,b"001000",t8);
mux23	:	mux2to1_48bit	port map(bit0_48bit,t8,B(8),u8);
add24	:	adder48bit		port map(s7,u8,s8,open);

shift25	:	shiftleft48bit	port map(A,b"001001",t9);
mux26	:	mux2to1_48bit	port map(bit0_48bit,t9,B(9),u9);
add27	:	adder48bit		port map(s8,u9,s9,open);

shift28	:	shiftleft48bit	port map(A,b"001010",t10);
mux29	:	mux2to1_48bit	port map(bit0_48bit,t10,B(10),u10);
add30	:	adder48bit		port map(s9,u10,s10,open);

shift31	:	shiftleft48bit	port map(A,b"001011",t11);
mux32	:	mux2to1_48bit	port map(bit0_48bit,t11,B(11),u11);
add33	:	adder48bit		port map(s10,u11,s11,open);

shift34	:	shiftleft48bit	port map(A,b"001100",t12);
mux35	:	mux2to1_48bit	port map(bit0_48bit,t12,B(12),u12);
add36	:	adder48bit		port map(s11,u12,s12,open);

shift37	:	shiftleft48bit	port map(A,b"001101",t13);
mux38	:	mux2to1_48bit	port map(bit0_48bit,t13,B(13),u13);
add39	:	adder48bit		port map(s12,u13,s13,open);

shift40	:	shiftleft48bit	port map(A,b"001110",t14);
mux41	:	mux2to1_48bit	port map(bit0_48bit,t14,B(14),u14);
add42	:	adder48bit		port map(s13,u14,s14,open);

shift43	:	shiftleft48bit	port map(A,b"001111",t15);
mux44	:	mux2to1_48bit	port map(bit0_48bit,t15,B(15),u15);
add45	:	adder48bit		port map(s14,u15,s15,open);

shift46	:	shiftleft48bit	port map(A,b"010000",t16);
mux47	:	mux2to1_48bit	port map(bit0_48bit,t16,B(16),u16);
add48	:	adder48bit		port map(s15,u16,s16,open);

shift49	:	shiftleft48bit	port map(A,b"010001",t17);
mux50	:	mux2to1_48bit	port map(bit0_48bit,t17,B(17),u17);
add51	:	adder48bit		port map(s16,u17,s17,open);

shift52	:	shiftleft48bit	port map(A,b"010010",t18);
mux53	:	mux2to1_48bit	port map(bit0_48bit,t18,B(18),u18);
add54	:	adder48bit		port map(s17,u18,s18,open);

shift55	:	shiftleft48bit	port map(A,b"010011",t19);
mux56	:	mux2to1_48bit	port map(bit0_48bit,t19,B(19),u19);
add57	:	adder48bit		port map(s18,u19,s19,open);

shift58	:	shiftleft48bit	port map(A,b"010100",t20);
mux59	:	mux2to1_48bit	port map(bit0_48bit,t20,B(20),u20);
add60	:	adder48bit		port map(s19,u20,s20,open);

shift61	:	shiftleft48bit	port map(A,b"010101",t21);
mux62	:	mux2to1_48bit	port map(bit0_48bit,t21,B(21),u21);
add63	:	adder48bit		port map(s20,u21,s21,open);

shift64	:	shiftleft48bit	port map(A,b"010110",t22);
mux65	:	mux2to1_48bit	port map(bit0_48bit,t22,B(22),u22);
add66	:	adder48bit		port map(s21,u22,s22,open);

shift67	:	shiftleft48bit	port map(A,b"010111",t23);
mux68	:	mux2to1_48bit	port map(bit0_48bit,t23,B(23),u23);
add69	:	adder48bit		port map(s22,u23,S(47 downto 0),open);

end struc;
