library ieee;
use ieee.std_logic_1164.all;

entity mux48to1 is
port(	a0,a1,a2,a3,a4,a5,a6,a7,a8,a9	:	in	std_logic;
		a10,a11,a12,a13,a14,a15,a16		:	in	std_logic;
		a17,a18,a19,a20,a21,a22,a23,a24	:	in	std_logic;
		a25,a26,a27,a28,a29,a30,a31,a32	:	in	std_logic;
		a33,a34,a35,a36,a37,a38,a39,a40	:	in	std_logic;
		a41,a42,a43,a44,a45,a46,a47		:	in	std_logic;
		s0,s1,s2,s3,s4,s5				:	in	std_logic;
		y								:	out	std_logic);
end mux48to1;

architecture behv of mux48to1 is

signal and0,and1,and2,and3,and4,and5,and6,and7	:	std_logic;
signal and8,and9,and10,and11,and12,and13,and14	:	std_logic;
signal and15,and16,and17,and18,and19,and20		:	std_logic;
signal and21,and22,and23,and24,and25,and26,and27:	std_logic;
signal and28,and29,and30,and31,and32,and33,and34:	std_logic;
signal and35,and36,and37,and38,and39,and40,and41:	std_logic;
signal and42,and43,and44,and45,and46,and47		:	std_logic;

begin
and0   <=(not s5) and  (not s4) and (not s3) and (not s2) and (not s1) and (not s0) and a0;
and1   <=(not s5) and  (not s4) and (not s3) and (not s2) and (not s1) and (    s0) and a1;
and2   <=(not s5) and  (not s4) and (not s3) and (not s2) and (    s1) and (not s0) and a2;
and3   <=(not s5) and  (not s4) and (not s3) and (not s2) and (    s1) and (    s0) and a3;
and4   <=(not s5) and  (not s4) and (not s3) and (    s2) and (not s1) and (not s0) and a4;
and5   <=(not s5) and  (not s4) and (not s3) and (    s2) and (not s1) and (    s0) and a5;
and6   <=(not s5) and  (not s4) and (not s3) and (    s2) and (    s1) and (not s0) and a6;
and7   <=(not s5) and  (not s4) and (not s3) and (    s2) and (    s1) and (    s0) and a7;
and8   <=(not s5) and  (not s4) and (    s3) and (not s2) and (not s1) and (not s0) and a8;
and9   <=(not s5) and  (not s4) and (    s3) and (not s2) and (not s1) and (    s0) and a9;
and10  <=(not s5) and  (not s4) and (    s3) and (not s2) and (    s1) and (not s0) and a10;
and11  <=(not s5) and  (not s4) and (    s3) and (not s2) and (    s1) and (    s0) and a11;
and12  <=(not s5) and  (not s4) and (    s3) and (    s2) and (not s1) and (not s0) and a12;
and13  <=(not s5) and  (not s4) and (    s3) and (    s2) and (not s1) and (    s0) and a13;
and14  <=(not s5) and  (not s4) and (    s3) and (    s2) and (    s1) and (not s0) and a14;
and15  <=(not s5) and  (not s4) and (    s3) and (    s2) and (    s1) and (    s0) and a15;
and16  <=(not s5) and  (    s4) and (not s3) and (not s2) and (not s1) and (not s0) and a16;
and17  <=(not s5) and  (    s4) and (not s3) and (not s2) and (not s1) and (    s0) and a17;
and18  <=(not s5) and  (    s4) and (not s3) and (not s2) and (    s1) and (not s0) and a18;
and19  <=(not s5) and  (    s4) and (not s3) and (not s2) and (    s1) and (    s0) and a19;
and20  <=(not s5) and  (    s4) and (not s3) and (    s2) and (not s1) and (not s0) and a20;
and21  <=(not s5) and  (    s4) and (not s3) and (    s2) and (not s1) and (    s0) and a21;
and22  <=(not s5) and  (    s4) and (not s3) and (    s2) and (    s1) and (not s0) and a22;
and23  <=(not s5) and  (    s4) and (not s3) and (    s2) and (    s1) and (    s0) and a23;
and24  <=(not s5) and  (    s4) and (    s3) and (not s2) and (not s1) and (not s0) and a24;
and25  <=(not s5) and  (    s4) and (    s3) and (not s2) and (not s1) and (    s0) and a25;
and26  <=(not s5) and  (    s4) and (    s3) and (not s2) and (    s1) and (not s0) and a26;
and27  <=(not s5) and  (    s4) and (    s3) and (not s2) and (    s1) and (    s0) and a27;
and28  <=(not s5) and  (    s4) and (    s3) and (    s2) and (not s1) and (not s0) and a28;
and29  <=(not s5) and  (    s4) and (    s3) and (    s2) and (not s1) and (    s0) and a29;
and30  <=(not s5) and  (    s4) and (    s3) and (    s2) and (    s1) and (not s0) and a30;
and31  <=(not s5) and  (    s4) and (    s3) and (    s2) and (    s1) and (    s0) and a31;
and32  <=(	  s5) and  (not s4) and (not s3) and (not s2) and (not s1) and (not s0) and a32;
and33  <=(	  s5) and  (not s4) and (not s3) and (not s2) and (not s1) and (    s0) and a33;
and34  <=(	  s5) and  (not s4) and (not s3) and (not s2) and (    s1) and (not s0) and a34;
and35  <=(	  s5) and  (not s4) and (not s3) and (not s2) and (    s1) and (    s0) and a35;
and36  <=(	  s5) and  (not s4) and (not s3) and (    s2) and (not s1) and (not s0) and a36;
and37  <=(	  s5) and  (not s4) and (not s3) and (    s2) and (not s1) and (    s0) and a37;
and38  <=(	  s5) and  (not s4) and (not s3) and (    s2) and (    s1) and (not s0) and a38;
and39  <=(	  s5) and  (not s4) and (not s3) and (    s2) and (    s1) and (    s0) and a39;
and40  <=(	  s5) and  (not s4) and (    s3) and (not s2) and (not s1) and (not s0) and a40;
and41  <=(	  s5) and  (not s4) and (    s3) and (not s2) and (not s1) and (    s0) and a41;
and42  <=(	  s5) and  (not s4) and (    s3) and (not s2) and (    s1) and (not s0) and a42;
and43  <=(	  s5) and  (not s4) and (    s3) and (not s2) and (    s1) and (    s0) and a43;
and44  <=(	  s5) and  (not s4) and (    s3) and (	  s2) and (not s1) and (not s0) and a44;
and45  <=(	  s5) and  (not s4) and (    s3) and (	  s2) and (not s1) and (    s0) and a45;
and46  <=(	  s5) and  (not s4) and (    s3) and (	  s2) and (	   s1) and (not s0) and a46;
and47  <=(	  s5) and  (not s4) and (    s3) and (	  s2) and (	   s1) and (	s0) and a47;


y	<=	and0 or and1 or and2 or and3 or and4 or and5 or and6 or and7 or and8 or and9 
		or and10 or and11 or and12 or and13 or and14 or and15 or and16 or and17 or and18
		or and19 or and20 or and21 or and22 or and23 or and24 or and25 or and26 or and27
		or and28 or and29 or and30 or and31 or and32 or and33 or and34 or and35 or and36
		or and37 or and38 or and39 or and40 or and41 or and42 or and43 or and44 or and45
		or and46 or and47;

end behv;