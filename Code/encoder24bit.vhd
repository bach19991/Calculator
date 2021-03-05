library ieee;
use ieee.std_logic_1164.all;

entity encoder24bit is
port(	a0,a1,a2,a3,a4,a5,a6,a7,a8	:	in	std_logic;
		a9,a10,a11,a12,a13,a14,a15	:	in	std_logic;
		a16,a17,a18,a19,a20,a21		:	in	std_logic;
		a22,a23						:	in	std_logic;
		s0,s1,s2,s3,s4			:	out	std_logic);
end encoder24bit;

architecture behv of encoder24bit is

signal b1,b2,b3,b4,b5,b6,b7,b8,b9	:	std_logic;
signal b10,b11,b12,b13,b14,b15,b16		:	std_logic;
signal b17,b18,b19,b20,b21,b22,b23		:	std_logic;

begin
b1	<=	(not a0) and a1;
b2	<=	(not a0) and (not a1) and a2;
b3	<=	(not a0) and (not a1) and (not a2) and a3;
b4	<=	(not a0) and (not a1) and (not a2) and (not a3) and a4;
b5	<=	(not a0) and (not a1) and (not a2) and (not a3) and (not a4) and a5;
b6	<=	(not a0) and (not a1) and (not a2) and (not a3) and (not a4) and (not a5) and a6;
b7	<=	(not a0) and (not a1) and (not a2) and (not a3) and (not a4) and (not a5) and (not a6) and a7;
b8	<=  (not a0) and (not a1) and (not a2) and (not a3) and (not a4) and (not a5) and (not a6) and (not a7) and a8;
b9	<=  (not a0) and (not a1) and (not a2) and (not a3) and (not a4) and (not a5) and (not a6) and (not a7) and (not a8) and a9;
b10	<=  (not a0) and (not a1) and (not a2) and (not a3) and (not a4) and (not a5) and (not a6) and (not a7) and (not a8) and (not a9) and a10;
b11	<=  (not a0) and (not a1) and (not a2) and (not a3) and (not a4) and (not a5) and (not a6) and (not a7) and (not a8) and (not a9) and (not a10) and a11;
b12	<=  (not a0) and (not a1) and (not a2) and (not a3) and (not a4) and (not a5) and (not a6) and (not a7) and (not a8) and (not a9) and (not a10) and (not a11) and a12;
b13	<=  (not a0) and (not a1) and (not a2) and (not a3) and (not a4) and (not a5) and (not a6) and (not a7) and (not a8) and (not a9) and (not a10) and (not a11) and (not a12) and a13;
b14	<=  (not a0) and (not a1) and (not a2) and (not a3) and (not a4) and (not a5) and (not a6) and (not a7) and (not a8) and (not a9) and (not a10) and (not a11) and (not a12) and (not a13) and a14;
b15	<=  (not a0) and (not a1) and (not a2) and (not a3) and (not a4) and (not a5) and (not a6) and (not a7) and (not a8) and (not a9) and (not a10) and (not a11) and (not a12) and (not a13) and (not a14) and a15;
b16	<=  (not a0) and (not a1) and (not a2) and (not a3) and (not a4) and (not a5) and (not a6) and (not a7) and (not a8) and (not a9) and (not a10) and (not a11) and (not a12) and (not a13) and (not a14) and (not a15) and a16;
b17	<=  (not a0) and (not a1) and (not a2) and (not a3) and (not a4) and (not a5) and (not a6) and (not a7) and (not a8) and (not a9) and (not a10) and (not a11) and (not a12) and (not a13) and (not a14) and (not a15) and (not a16) and a17;
b18	<=  (not a0) and (not a1) and (not a2) and (not a3) and (not a4) and (not a5) and (not a6) and (not a7) and (not a8) and (not a9) and (not a10) and (not a11) and (not a12) and (not a13) and (not a14) and (not a15) and (not a16) and (not a17) and a18;
b19	<=  (not a0) and (not a1) and (not a2) and (not a3) and (not a4) and (not a5) and (not a6) and (not a7) and (not a8) and (not a9) and (not a10) and (not a11) and (not a12) and (not a13) and (not a14) and (not a15) and (not a16) and (not a17) and (not a18) and a19;
b20	<=  (not a0) and (not a1) and (not a2) and (not a3) and (not a4) and (not a5) and (not a6) and (not a7) and (not a8) and (not a9) and (not a10) and (not a11) and (not a12) and (not a13) and (not a14) and (not a15) and (not a16) and (not a17) and (not a18) and (not a19) and a20;
b21	<=  (not a0) and (not a1) and (not a2) and (not a3) and (not a4) and (not a5) and (not a6) and (not a7) and (not a8) and (not a9) and (not a10) and (not a11) and (not a12) and (not a13) and (not a14) and (not a15) and (not a16) and (not a17) and (not a18) and (not a19) and (not a20) and a21;
b22	<=  (not a0) and (not a1) and (not a2) and (not a3) and (not a4) and (not a5) and (not a6) and (not a7) and (not a8) and (not a9) and (not a10) and (not a11) and (not a12) and (not a13) and (not a14) and (not a15) and (not a16) and (not a17) and (not a18) and (not a19) and (not a20) and (not a21) and a22;
b23	<=	(not a0) and (not a1) and (not a2) and (not a3) and (not a4) and (not a5) and (not a6) and (not a7) and (not a8) and (not a9) and (not a10) and (not a11) and (not a12) and (not a13) and (not a14) and (not a15) and (not a16) and (not a17) and (not a18) and (not a19) and (not a20) and (not a21) and (not a22) and a23;

s0 <= b1 or b3 or b5 or b7 or b9 or b11 or b13 or b15 or b17 or b19 or b21 or b23;
s1 <= b2 or b3 or b6 or b7 or b10 or b11 or b14 or b15 or b18 or b19 or b22 or b23;
s2 <= b4 or b5 or b6 or b8 or b12 or b13 or b14 or b15 or b20 or b21 or b22 or b23;
s3 <= b8 or b9 or b10 or b11 or b13 or b14 or b15;
s4 <= b16 or b17 or b18 or b19 or b20 or b21 or b22 or b23;

end behv;
