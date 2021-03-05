library ieee;
use ieee.std_logic_1164.all;

entity AdivB is
port(	A,B		:	in	std_logic_vector(23 downto 0);
		S		:	out	std_logic_vector(24 downto 0));
end AdivB;

architecture struc of AdivB is
component subtracter25bit is
port ( A	:	in	std_logic_vector(24 downto 0);
	   B	:	in	std_logic_vector(23 downto 0);
difference	:	out std_logic_vector(23 downto 0);
	borrow	:	out std_logic);
end component;

component subtracter24bit is
port ( A,B	:	in	std_logic_vector(23 downto 0);
difference	:	out std_logic_vector(23 downto 0);
	borrow	:	out std_logic);
end component;

component mux2to1 is
port (	A	:	in	std_logic;
		B	:	in	std_logic;
		S	:	in	std_logic;
		Y	:	out std_logic);
end component;

component mux2to1_24bit is
port (	a,b		:	in	std_logic_vector(23 downto 0);
		s		:	in	std_logic;
		y		:	out std_logic_vector(23 downto 0));
end component;

component shiftleft1bit is
port(	A	:	in	std_logic_vector(23 downto 0);
		Y	:	out std_logic_vector(24 downto 0));
end component;

signal t0,t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12,t13,t14,t15,t16	:	std_logic;
signal t17,t18,t19,t20,t21,t22,t23,tt								:	std_logic;
signal v0,v1,o0,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,o11,o12,o13,o14,o15	:	std_logic_vector(23 downto 0);
signal o16,o17,o18,o19,o20,o21,o22,o23,o24,o25,o26,o27,o28,o29,o30	:	std_logic_vector(23 downto 0);
signal o31,o32,o33,o34,o35,o36,o37,o38,o39,o40,o41,o42,o43,o44,o45	:	std_logic_vector(23 downto 0);
signal o46,o47,o48													:	std_logic_vector(23 downto 0);
signal u0,u1,u2,u3,u4,u5,u6,u7,u8,u9,u10,u11,u12,u13,u14,u15,u16	:	std_logic_vector(24 downto 0);
signal u17,u18,u19,u20,u21,u22,u23									:	std_logic_vector(24 downto 0);

begin

sub0	:	subtracter24bit	port map(A,B,v0,tt);
mux1	:	mux2to1			port map('1','0',tt,S(24));
mux2	:	mux2to1_24bit	port map(v0,A,tt,v1);

shift3	:	shiftleft1bit	port map(v1 ,u0 );sub4	:	subtracter25bit 	port map(u0 ,B,o1 ,t0 );mux5	:	mux2to1		port map('1','0',t0 ,S(23));mux6	:	mux2to1_24bit	port map(o1 ,u0(23 downto 0),t0 ,o2);
shift7 	:	shiftleft1bit	port map(o2 ,u1 );sub8 	:	subtracter25bit		port map(u1 ,B,o3 ,t1 );mux9 	:	mux2to1		port map('1','0',t1 ,S(22));mux10	:	mux2to1_24bit	port map(o3 ,u1(23 downto 0),t1 ,o4 );                          
shift11	:	shiftleft1bit	port map(o4 ,u2 );sub12	:	subtracter25bit		port map(u2 ,B,o5 ,t2 );mux13	:	mux2to1		port map('1','0',t2 ,S(21));mux14	:	mux2to1_24bit	port map(o5 ,u2(23 downto 0),t2 ,o6 );
shift15	:	shiftleft1bit	port map(o6 ,u3 );sub16	:	subtracter25bit		port map(u3 ,B,o7 ,t3 );mux17	:	mux2to1		port map('1','0',t3 ,S(20));mux18	:	mux2to1_24bit	port map(o7 ,u3(23 downto 0),t3 ,o8 );
shift19	:	shiftleft1bit	port map(o8 ,u4 );sub20	:	subtracter25bit		port map(u4 ,B,o9 ,t4 );mux21	:	mux2to1		port map('1','0',t4 ,S(19));mux22	:	mux2to1_24bit	port map(o9 ,u4(23 downto 0),t4 ,o10);
shift23	:	shiftleft1bit	port map(o10,u5 );sub24	:	subtracter25bit		port map(u5 ,B,o11,t5 );mux25	:	mux2to1		port map('1','0',t5 ,S(18));mux26	:	mux2to1_24bit	port map(o11,u5(23 downto 0),t5 ,o12);
shift27	:	shiftleft1bit	port map(o12,u6 );sub28	:	subtracter25bit		port map(u6 ,B,o13,t6 );mux29	:	mux2to1		port map('1','0',t6 ,S(17));mux30	:	mux2to1_24bit	port map(o13,u6(23 downto 0),t6 ,o14);
shift31	:	shiftleft1bit	port map(o14,u7 );sub32	:	subtracter25bit		port map(u7 ,B,o15,t7 );mux33	:	mux2to1		port map('1','0',t7 ,S(16));mux34	:	mux2to1_24bit	port map(o15,u7(23 downto 0),t7 ,o16);
shift35	:	shiftleft1bit	port map(o16,u8 );sub36	:	subtracter25bit		port map(u8 ,B,o17,t8 );mux37	:	mux2to1		port map('1','0',t8 ,S(15));mux38	:	mux2to1_24bit	port map(o17,u8(23 downto 0),t8 ,o18);
shift39	:	shiftleft1bit	port map(o18,u9 );sub40	:	subtracter25bit		port map(u9 ,B,o19,t9 );mux41	:	mux2to1		port map('1','0',t9 ,S(14));mux42	:	mux2to1_24bit	port map(o19,u9(23 downto 0),t9 ,o20);
shift43	:	shiftleft1bit	port map(o20,u10);sub44	:	subtracter25bit		port map(u10,B,o21,t10);mux45	:	mux2to1		port map('1','0',t10,S(13));mux46	:	mux2to1_24bit	port map(o21,u10(23 downto 0),t10,o22);
shift47	:	shiftleft1bit	port map(o22,u11);sub48	:	subtracter25bit		port map(u11,B,o23,t11);mux49	:	mux2to1		port map('1','0',t11,S(12));mux50	:	mux2to1_24bit	port map(o23,u11(23 downto 0),t11,o24);
shift51	:	shiftleft1bit	port map(o24,u12);sub52	:	subtracter25bit		port map(u12,B,o25,t12);mux53	:	mux2to1		port map('1','0',t12,S(11));mux54	:	mux2to1_24bit	port map(o25,u12(23 downto 0),t12,o26);
shift55	:	shiftleft1bit	port map(o26,u13);sub56	:	subtracter25bit		port map(u13,B,o27,t13);mux57	:	mux2to1		port map('1','0',t13,S(10));mux58	:	mux2to1_24bit	port map(o27,u13(23 downto 0),t13,o28);
shift59	:	shiftleft1bit	port map(o28,u14);sub60	:	subtracter25bit		port map(u14,B,o29,t14);mux61	:	mux2to1		port map('1','0',t14,S(9 ));mux62	:	mux2to1_24bit	port map(o29,u14(23 downto 0),t14,o30);
shift63	:	shiftleft1bit	port map(o30,u15);sub64	:	subtracter25bit		port map(u15,B,o31,t15);mux65	:	mux2to1		port map('1','0',t15,S(8 ));mux66	:	mux2to1_24bit	port map(o31,u15(23 downto 0),t15,o32);
shift67	:	shiftleft1bit	port map(o32,u16);sub68	:	subtracter25bit		port map(u16,B,o33,t16);mux69	:	mux2to1		port map('1','0',t16,S(7 ));mux70	:	mux2to1_24bit	port map(o33,u16(23 downto 0),t16,o34);
shift71	:	shiftleft1bit	port map(o34,u17);sub72	:	subtracter25bit		port map(u17,B,o35,t17);mux73	:	mux2to1		port map('1','0',t17,S(6 ));mux74	:	mux2to1_24bit	port map(o35,u17(23 downto 0),t17,o36);
shift75	:	shiftleft1bit	port map(o36,u18);sub76	:	subtracter25bit		port map(u18,B,o37,t18);mux77	:	mux2to1		port map('1','0',t18,S(5 ));mux78	:	mux2to1_24bit	port map(o37,u18(23 downto 0),t18,o38);
shift79	:	shiftleft1bit	port map(o38,u19);sub80	:	subtracter25bit		port map(u19,B,o39,t19);mux81	:	mux2to1		port map('1','0',t19,S(4 ));mux82	:	mux2to1_24bit	port map(o39,u19(23 downto 0),t19,o40);
shift83	:	shiftleft1bit	port map(o40,u20);sub84	:	subtracter25bit		port map(u20,B,o41,t20);mux85	:	mux2to1		port map('1','0',t20,S(3 ));mux86	:	mux2to1_24bit	port map(o41,u20(23 downto 0),t20,o42);
shift87	:	shiftleft1bit	port map(o42,u21);sub88	:	subtracter25bit		port map(u21,B,o43,t21);mux89	:	mux2to1		port map('1','0',t21,S(2 ));mux90	:	mux2to1_24bit	port map(o43,u21(23 downto 0),t21,o44);
shift91	:	shiftleft1bit	port map(o44,u22);sub92	:	subtracter25bit		port map(u22,B,o45,t22);mux93	:	mux2to1		port map('1','0',t22,S(1 ));mux94	:	mux2to1_24bit	port map(o45,u22(23 downto 0),t22,o46);
shift95	:	shiftleft1bit	port map(o46,u23);sub96	:	subtracter25bit		port map(u23,B,o47,t23);mux97	:	mux2to1		port map('1','0',t23,S(0 ));mux98	:	mux2to1_24bit	port map(o47,u23(23 downto 0),t23,o48);


end struc;

