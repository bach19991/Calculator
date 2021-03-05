library ieee;
use ieee.std_logic_1164.all;

entity mux24to1 is
port(	A0,A1,A2,A3,A4,A5,A6,A7,A8,A9	:	in	std_logic;
		A10,A11,A12,A13,A14,A15,A16		:	in	std_logic;
		A17,A18,A19,A20,A21,A22,A23		:	in	std_logic;
		s0,s1,s2,s3,s4					:	in	std_logic;
		y								:	out	std_logic);
end mux24to1;

architecture behv of mux24to1 is

signal and0,and1,and2,and3,and4,and5,and6,and7	:	std_logic;
signal and8,and9,and10,and11,and12,and13,and14	:	std_logic;
signal and15,and16,and17,and18,and19,and20		:	std_logic;
signal and21,and22,and23						:	std_logic;


begin

and0   <=  (not s4) and (not s3) and (not s2) and (not s1) and (not s0) and A0;
and1   <=  (not s4) and (not s3) and (not s2) and (not s1) and (    s0) and A1;
and2   <=  (not s4) and (not s3) and (not s2) and (    s1) and (not s0) and A2;
and3   <=  (not s4) and (not s3) and (not s2) and (    s1) and (    s0) and A3;
and4   <=  (not s4) and (not s3) and (    s2) and (not s1) and (not s0) and A4;
and5   <=  (not s4) and (not s3) and (    s2) and (not s1) and (    s0) and A5;
and6   <=  (not s4) and (not s3) and (    s2) and (    s1) and (not s0) and A6;
and7   <=  (not s4) and (not s3) and (    s2) and (    s1) and (    s0) and A7;
and8   <=  (not s4) and (    s3) and (not s2) and (not s1) and (not s0) and A8;
and9   <=  (not s4) and (    s3) and (not s2) and (not s1) and (    s0) and A9;
and10  <=  (not s4) and (    s3) and (not s2) and (    s1) and (not s0) and A10;
and11  <=  (not s4) and (    s3) and (not s2) and (    s1) and (    s0) and A11;
and12  <=  (not s4) and (    s3) and (    s2) and (not s1) and (not s0) and A12;
and13  <=  (not s4) and (    s3) and (    s2) and (not s1) and (    s0) and A13;
and14  <=  (not s4) and (    s3) and (    s2) and (    s1) and (not s0) and A14;
and15  <=  (not s4) and (    s3) and (    s2) and (    s1) and (    s0) and A15;
and16  <=  (    s4) and (not s3) and (not s2) and (not s1) and (not s0) and A16;
and17  <=  (    s4) and (not s3) and (not s2) and (not s1) and (    s0) and A17;
and18  <=  (    s4) and (not s3) and (not s2) and (    s1) and (not s0) and A18;
and19  <=  (    s4) and (not s3) and (not s2) and (    s1) and (    s0) and A19;
and20  <=  (    s4) and (not s3) and (    s2) and (not s1) and (not s0) and A20;
and21  <=  (    s4) and (not s3) and (    s2) and (not s1) and (    s0) and A21;
and22  <=  (    s4) and (not s3) and (    s2) and (    s1) and (not s0) and A22;
and23  <=  (    s4) and (not s3) and (    s2) and (    s1) and (    s0) and A23;

y	<=	and0 or and1 or and2 or and3 or and4 or and5 or and6 or and7 or and8 or and9 
		or and10 or and11 or and12 or and13 or and14 or and15 or and16 or and17 or and18
		or and19 or and20 or and21 or and22 or and23;

end behv;