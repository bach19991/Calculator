// module fulladder

module FA(a,b,cin,s,cout);
input a,b,cin;
output s,cout;
wire  t0,t1,t2,t3,t4;
xor(t0,a,b);
xor(s,t0,cin);
and(t1,a,b);
and(t2,a,cin);
and(t3,b,cin);
or(t4,t1,t2);
or(cout,t3,t4);
endmodule

// module halfadder

module HA(a,b,s,cout);
input a,b;
output s,cout;
xor(s,a,b);
and(cout,a,b);
endmodule

//module cong 8bit
module Cong8(a,b,s,cout);
input  [7:0] a,b;
output [7:0] s;
output cout;
wire   [6:0] c;
FA f25(a[0],b[0],0,s[0],c[0]);
FA f26(a[1],b[1],c[0],s[1],c[1]);
FA f27(a[2],b[2],c[1],s[2],c[2]);
FA f28(a[3],b[3],c[2],s[3],c[3]);
FA f29(a[4],b[4],c[3],s[4],c[4]);
FA f30(a[5],b[5],c[4],s[5],c[5]);
FA f31(a[6],b[6],c[5],s[6],c[6]);
FA f32(a[7],b[7],c[6],s[7],cout);
endmodule

// module cong24bit

module Cong24(a,b,s,cout);
input   [23:0] a,b;
output  [23:0] s;
output  cout;
wire    [22:0] c;
FA fa1(a[0],b[0],0,s[0],c[0]);
FA fa2(a[1],b[1],c[0],s[1],c[1]);
FA fa3(a[2],b[2],c[1],s[2],c[2]);
FA fa4(a[3],b[3],c[2],s[3],c[3]);
FA fa5(a[4],b[4],c[3],s[4],c[4]);
FA fa6(a[5],b[5],c[4],s[5],c[5]);
FA fa7(a[6],b[6],c[5],s[6],c[6]);
FA fa8(a[7],b[7],c[6],s[7],c[7]);
FA fa9(a[8],b[8],c[7],s[8],c[8]);
FA fa10(a[9],b[9],c[8],s[9],c[9]);
FA fa11(a[10],b[10],c[9],s[10],c[10]);
FA fa12(a[11],b[11],c[10],s[11],c[11]);
FA fa13(a[12],b[12],c[11],s[12],c[12]);
FA fa14(a[13],b[13],c[12],s[13],c[13]);
FA fa15(a[14],b[14],c[13],s[14],c[14]);
FA fa16(a[15],b[15],c[14],s[15],c[15]);
FA fa17(a[16],b[16],c[15],s[16],c[16]);
FA fa18(a[17],b[17],c[16],s[17],c[17]);
FA fa19(a[18],b[18],c[17],s[18],c[18]);
FA fa20(a[19],b[19],c[18],s[19],c[19]);
FA fa21(a[20],b[20],c[19],s[20],c[20]);
FA fa22(a[21],b[21],c[20],s[21],c[21]);
FA fa23(a[22],b[22],c[21],s[22],c[22]);
FA fa24(a[23],b[23],c[22],s[23],cout);
endmodule

// module tru1bit

module Tru1(a,b,cin,s,cout);
    input a,b,cin;
    output s,cout;
    wire s1,s2,not_a,c1,c2;
    not (not_a,a);
    xor (s1,b,a);
    xor (s,s1,cin);

    or  (s2,b,cin);
    and (c1,not_a,s2);
    and (c2,b,cin);
    or  (cout,c1,c2);
endmodule

// module tru8bit

module Tru8(a,b,s,cout);
    input [7:0]a,b;
    output [7:0]s;
    output cout;
    wire c1,c2,c3,c4,c5,c6,c7;

    Tru1 ts1(a[0],b[0],0,s[0],c1);
    Tru1 ts2(a[1],b[1],c1,s[1],c2);
    Tru1 ts3(a[2],b[2],c2,s[2],c3);
    Tru1 ts4(a[3],b[3],c3,s[3],c4);
    Tru1 ts5(a[4],b[4],c4,s[4],c5);
    Tru1 ts6(a[5],b[5],c5,s[5],c6);
    Tru1 ts7(a[6],b[6],c6,s[6],c7);
    Tru1 ts8(a[7],b[7],c7,s[7],cout);
endmodule

// module tru23bit

module Tru23(a,b,s,cout);
    input [22:0]a,b;
    output [22:0]s;
    output cout;
    wire c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20,c21,c22;

    Tru1 tx11(a[0],b[0],0,s[0],c1);
    Tru1 tx12(a[1],b[1],c1,s[1],c2);
    Tru1 tx13(a[2],b[2],c2,s[2],c3);
    Tru1 tx14(a[3],b[3],c3,s[3],c4);
    Tru1 tx15(a[4],b[4],c4,s[4],c5);
    Tru1 tx16(a[5],b[5],c5,s[5],c6);
    Tru1 tx17(a[6],b[6],c6,s[6],c7);
    Tru1 tx18(a[7],b[7],c7,s[7],c8);
    Tru1 tx19(a[8],b[8],c8,s[8],c9);
    Tru1 tx20(a[9],b[9],c9,s[9],c10);
    Tru1 tx21(a[10],b[10],c10,s[10],c11);
    Tru1 tx22(a[11],b[11],c11,s[11],c12);
    Tru1 tx23(a[12],b[12],c12,s[12],c13);
    Tru1 tx24(a[13],b[13],c13,s[13],c14);
    Tru1 tx25(a[14],b[14],c14,s[14],c15);
    Tru1 tx26(a[15],b[15],c15,s[15],c16);
    Tru1 tx27(a[16],b[16],c16,s[16],c17);
    Tru1 tx28(a[17],b[17],c17,s[17],c18);
    Tru1 tx29(a[18],b[18],c18,s[18],c19);
    Tru1 tx30(a[19],b[19],c19,s[19],c20);
    Tru1 tx31(a[20],b[20],c20,s[20],c21);
    Tru1 tx32(a[21],b[21],c21,s[21],c22);
    Tru1 tx33(a[22],b[22],c22,s[22],cout);
endmodule

//module tru24bit

module Tru24(a,b,s,cout);
    input [23:0]a,b;
    output [23:0]s;
    output cout;
    wire c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20,c21,c22,c23;
   Tru1 tx11(a[0],b[0],0,s[0],c1);
    Tru1 tx12(a[1],b[1],c1,s[1],c2);
    Tru1 tx13(a[2],b[2],c2,s[2],c3);
    Tru1 tx14(a[3],b[3],c3,s[3],c4);
    Tru1 tx15(a[4],b[4],c4,s[4],c5);
    Tru1 tx16(a[5],b[5],c5,s[5],c6);
    Tru1 tx17(a[6],b[6],c6,s[6],c7);
    Tru1 tx18(a[7],b[7],c7,s[7],c8);
    Tru1 tx19(a[8],b[8],c8,s[8],c9);
    Tru1 tx20(a[9],b[9],c9,s[9],c10);
    Tru1 tx21(a[10],b[10],c10,s[10],c11);
    Tru1 tx22(a[11],b[11],c11,s[11],c12);
    Tru1 tx23(a[12],b[12],c12,s[12],c13);
    Tru1 tx24(a[13],b[13],c13,s[13],c14);
    Tru1 tx25(a[14],b[14],c14,s[14],c15);
    Tru1 tx26(a[15],b[15],c15,s[15],c16);
    Tru1 tx27(a[16],b[16],c16,s[16],c17);
    Tru1 tx28(a[17],b[17],c17,s[17],c18);
    Tru1 tx29(a[18],b[18],c18,s[18],c19);
    Tru1 tx30(a[19],b[19],c19,s[19],c20);
    Tru1 tx31(a[20],b[20],c20,s[20],c21);
    Tru1 tx32(a[21],b[21],c21,s[21],c22);
    Tru1 tx33(a[22],b[22],c22,s[22],c23);
    Tru1 tx34(a[23],b[23],c23,s[23],cout);
endmodule

// module tru25bit

module Tru25(a,b,s,cout);
    input [24:0]a;
    input [23:0]b;
    output [23:0]s;
    output cout;
    wire c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20,c21,c22,c23,c24;

    Tru1 tv11(a[0],b[0],0,s[0],c1);
    Tru1 tv12(a[1],b[1],c1,s[1],c2);
    Tru1 tv13(a[2],b[2],c2,s[2],c3);
    Tru1 tv14(a[3],b[3],c3,s[3],c4);
    Tru1 tv15(a[4],b[4],c4,s[4],c5);
    Tru1 tv16(a[5],b[5],c5,s[5],c6);
    Tru1 tv17(a[6],b[6],c6,s[6],c7);
    Tru1 tv18(a[7],b[7],c7,s[7],c8);
    Tru1 tv19(a[8],b[8],c8,s[8],c9);
    Tru1 tv20(a[9],b[9],c9,s[9],c10);
    Tru1 tv21(a[10],b[10],c10,s[10],c11);
    Tru1 tv22(a[11],b[11],c11,s[11],c12);
    Tru1 tv23(a[12],b[12],c12,s[12],c13);
    Tru1 tv24(a[13],b[13],c13,s[13],c14);
    Tru1 tv25(a[14],b[14],c14,s[14],c15);
    Tru1 tv26(a[15],b[15],c15,s[15],c16);
    Tru1 tv27(a[16],b[16],c16,s[16],c17);
    Tru1 tv28(a[17],b[17],c17,s[17],c18);
    Tru1 tv29(a[18],b[18],c18,s[18],c19);
    Tru1 tv30(a[19],b[19],c19,s[19],c20);
    Tru1 tv31(a[20],b[20],c20,s[20],c21);
    Tru1 tv32(a[21],b[21],c21,s[21],c22);
    Tru1 tv33(a[22],b[22],c22,s[22],c23);
    Tru1 tv34(a[23],b[23],c23,s[23],c24);
    Tru1 tv35(a[24],0,c24,,cout);
endmodule

// module tru32bit

module Tru32(a,b,s,cout);
    input [31:0]a,b;
    output [31:0]s;
    output cout;
    wire c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,c31;

    Tru1 tt11(a[0],b[0],0,s[0],c1);
    Tru1 tt12(a[1],b[1],c1,s[1],c2);
    Tru1 tt13(a[2],b[2],c2,s[2],c3);
    Tru1 tt14(a[3],b[3],c3,s[3],c4);
    Tru1 tt15(a[4],b[4],c4,s[4],c5);
    Tru1 tt16(a[5],b[5],c5,s[5],c6);
    Tru1 tt17(a[6],b[6],c6,s[6],c7);
    Tru1 tt18(a[7],b[7],c7,s[7],c8);
    Tru1 tt19(a[8],b[8],c8,s[8],c9);
    Tru1 tt20(a[9],b[9],c9,s[9],c10);
    Tru1 tt21(a[10],b[10],c10,s[10],c11);
    Tru1 tt22(a[11],b[11],c11,s[11],c12);
    Tru1 tt23(a[12],b[12],c12,s[12],c13);
    Tru1 tt24(a[13],b[13],c13,s[13],c14);
    Tru1 tt25(a[14],b[14],c14,s[14],c15);
    Tru1 tt26(a[15],b[15],c15,s[15],c16);
    Tru1 tt27(a[16],b[16],c16,s[16],c17);
    Tru1 tt28(a[17],b[17],c17,s[17],c18);
    Tru1 tt29(a[18],b[18],c18,s[18],c19);
    Tru1 tt30(a[19],b[19],c19,s[19],c20);
    Tru1 tt31(a[20],b[20],c20,s[20],c21);
    Tru1 tt32(a[21],b[21],c21,s[21],c22);
    Tru1 tt33(a[22],b[22],c22,s[22],c23);
    Tru1 tt34(a[23],b[23],c23,s[23],c24);
    Tru1 tt35(a[24],b[24],c24,s[24],c25);
    Tru1 tt36(a[25],b[25],c25,s[25],c26);
    Tru1 tt37(a[26],b[26],c26,s[26],c27);
    Tru1 tt38(a[27],b[27],c27,s[27],c28);
    Tru1 tt39(a[28],b[28],c28,s[28],c29);
    Tru1 tt40(a[29],b[29],c29,s[29],c30);
    Tru1 tt41(a[30],b[30],c30,s[30],c31);
    Tru1 tt42(a[31],b[31],c31,s[31],cout);
endmodule

//module small ALU

module small_alu(a,b,s);
input [7:0] a,b;
output [8:0] s;
Tru8  T35(a[7:0],b[7:0],s[7:0],s[8]);
endmodule

// module bu2 8bit

module bu2_8b(a,y);
    input [7:0]a;
    output [8:0]y;
    wire [7:0] n_a;
    not (n_a[0],a[0]);
    not (n_a[1],a[1]);
    not (n_a[2],a[2]);
    not (n_a[3],a[3]);
    not (n_a[4],a[4]);
    not (n_a[5],a[5]);
    not (n_a[6],a[6]);
    not (n_a[7],a[7]);

    Cong8 c8b(n_a[7:0],8'b1,y[7:0],y[8]);

endmodule

// module mux1bit

module mux(a,b,s,y);
input  a,b;
input s;
output y;
wire s1,t1,t2;
not (s1,s);
and(t1,s1,a);
and(t2,s,b);
or(y,t1,t2);
endmodule

// module mux2bit

module mux2b(a,b,s,y);
input [1:0] a,b;
input s;
output [1:0] y;
mux m1(a[0],b[0],s,y[0]);
mux m2(a[1],b[1],s,y[1]);
endmodule

//module mux8bit

module mux8b(a,b,s,y);
input [7:0] a,b;
input s;
output [7:0] y;
mux m1(a[0],b[0],s,y[0]);
mux m2(a[1],b[1],s,y[1]);
mux m3(a[2],b[2],s,y[2]);
mux m4(a[3],b[3],s,y[3]);
mux m5(a[4],b[4],s,y[4]);
mux m6(a[5],b[5],s,y[5]);
mux m7(a[6],b[6],s,y[6]);
mux m8(a[7],b[7],s,y[7]);
endmodule

//module mux23bit

module mux23b(a,b,s,y);
input [22:0] a,b;
input s;
output  [22:0] y;
mux m11(a[0],b[0],s,y[0]);      mux m12(a[1],b[1],s,y[1]);      mux m13(a[2],b[2],s,y[2]);
mux m14(a[3],b[3],s,y[3]);      mux m15(a[4],b[4],s,y[4]);      mux m16(a[5],b[5],s,y[5]);
mux m17(a[6],b[6],s,y[6]);      mux m18(a[7],b[7],s,y[7]);      mux m19(a[8],b[8],s,y[8]);
mux m20(a[9],b[9],s,y[9]);      mux m21(a[10],b[10],s,y[10]);   mux m22(a[11],b[11],s,y[11]);
mux m23(a[12],b[12],s,y[12]);   mux m24(a[13],b[13],s,y[13]);   mux m25(a[14],b[14],s,y[14]);
mux m26(a[15],b[15],s,y[15]);   mux m27(a[16],b[16],s,y[16]);   mux m28(a[17],b[17],s,y[17]);
mux m29(a[18],b[18],s,y[18]);   mux m30(a[19],b[19],s,y[19]);   mux m31(a[20],b[20],s,y[20]);
mux m32(a[21],b[21],s,y[21]);   mux m33(a[22],b[22],s,y[22]);
endmodule

//module mux24bit

module mux24b(a,b,s,y);
input [23:0] a,b;
input s;
output  [23:0] y;
mux m34(a[0],b[0],s,y[0]);      mux m35(a[1],b[1],s,y[1]);      mux m36(a[2],b[2],s,y[2]);
mux m37(a[3],b[3],s,y[3]);      mux m38(a[4],b[4],s,y[4]);      mux m39(a[5],b[5],s,y[5]);
mux m40(a[6],b[6],s,y[6]);      mux m41(a[7],b[7],s,y[7]);      mux m42(a[8],b[8],s,y[8]);
mux m43(a[9],b[9],s,y[9]);      mux m44(a[10],b[10],s,y[10]);   mux m45(a[11],b[11],s,y[11]);
mux m46(a[12],b[12],s,y[12]);   mux m47(a[13],b[13],s,y[13]);   mux m48(a[14],b[14],s,y[14]);
mux m49(a[15],b[15],s,y[15]);   mux m50(a[16],b[16],s,y[16]);   mux m51(a[17],b[17],s,y[17]);
mux m52(a[18],b[18],s,y[18]);   mux m53(a[19],b[19],s,y[19]);   mux m54(a[20],b[20],s,y[20]);
mux m55(a[21],b[21],s,y[21]);   mux m56(a[22],b[22],s,y[22]);   mux m57(a[23],b[23],s,y[23]);
endmodule

//module mux48bit

module mux48b(a,b,s,y);
input [47:0] a,b;
input s;
output  [47:0] y;
mux e1(a[0],b[0],s,y[0]);          mux e2(a[1],b[1],s,y[1]);          mux e3(a[2],b[2],s,y[2]);
mux e4(a[3],b[3],s,y[3]);          mux e5(a[4],b[4],s,y[4]);          mux e6(a[5],b[5],s,y[5]);
mux e7(a[6],b[6],s,y[6]);          mux e8(a[7],b[7],s,y[7]);          mux e9(a[8],b[8],s,y[8]);
mux e10(a[9],b[9],s,y[9]);         mux e11(a[10],b[10],s,y[10]);      mux e12(a[11],b[11],s,y[11]);
mux e13(a[12],b[12],s,y[12]);      mux e14(a[13],b[13],s,y[13]);      mux e15(a[14],b[14],s,y[14]);
mux e16(a[15],b[15],s,y[15]);      mux e17(a[16],b[16],s,y[16]);      mux e18(a[17],b[17],s,y[17]);
mux e19(a[18],b[18],s,y[18]);      mux e20(a[19],b[19],s,y[19]);      mux e21(a[20],b[20],s,y[20]);
mux e22(a[21],b[21],s,y[21]);      mux e23(a[22],b[22],s,y[22]);      mux e24(a[23],b[23],s,y[23]);
mux e25(a[24],b[24],s,y[24]);      mux e26(a[25],b[25],s,y[25]);      mux e27(a[26],b[26],s,y[26]);
mux e28(a[27],b[27],s,y[27]);      mux e29(a[28],b[28],s,y[28]);      mux e30(a[29],b[29],s,y[29]);
mux e31(a[30],b[30],s,y[30]);      mux e32(a[31],b[31],s,y[31]);      mux e33(a[32],b[32],s,y[32]);
mux e34(a[33],b[33],s,y[33]);      mux e35(a[34],b[34],s,y[34]);       mux e36(a[35],b[35],s,y[35]);
mux e37(a[36],b[36],s,y[36]);      mux e38(a[37],b[37],s,y[37]);       mux e39(a[38],b[38],s,y[38]);
mux e40(a[39],b[39],s,y[39]);         mux e41(a[40],b[40],s,y[40]);
mux e42(a[41],b[41],s,y[41]);          mux e43(a[42],b[42],s,y[42]);          mux e44(a[43],b[43],s,y[43]);
mux e45(a[44],b[44],s,y[44]);          mux e46(a[45],b[45],s,y[45]);          mux e47(a[46],b[46],s,y[46]);
mux e48(a[47],b[47],s,y[47]);
endmodule

//module mux32bit

module mux32b(a,b,s,y);
input [31:0] a,b;
input s;
output  [31:0] y;
mux e1(a[0],b[0],s,y[0]);          mux e2(a[1],b[1],s,y[1]);          mux e3(a[2],b[2],s,y[2]);
mux e4(a[3],b[3],s,y[3]);          mux e5(a[4],b[4],s,y[4]);          mux e6(a[5],b[5],s,y[5]);
mux e7(a[6],b[6],s,y[6]);          mux e8(a[7],b[7],s,y[7]);          mux e9(a[8],b[8],s,y[8]);
mux e10(a[9],b[9],s,y[9]);         mux e11(a[10],b[10],s,y[10]);      mux e12(a[11],b[11],s,y[11]);
mux e13(a[12],b[12],s,y[12]);      mux e14(a[13],b[13],s,y[13]);      mux e15(a[14],b[14],s,y[14]);
mux e16(a[15],b[15],s,y[15]);      mux e17(a[16],b[16],s,y[16]);      mux e18(a[17],b[17],s,y[17]);
mux e19(a[18],b[18],s,y[18]);      mux e20(a[19],b[19],s,y[19]);      mux e21(a[20],b[20],s,y[20]);
mux e22(a[21],b[21],s,y[21]);      mux e23(a[22],b[22],s,y[22]);      mux e24(a[23],b[23],s,y[23]);
mux e25(a[24],b[24],s,y[24]);      mux e26(a[25],b[25],s,y[25]);      mux e27(a[26],b[26],s,y[26]);
mux e28(a[27],b[27],s,y[27]);      mux e29(a[28],b[28],s,y[28]);      mux e30(a[29],b[29],s,y[29]);
mux e31(a[30],b[30],s,y[30]);      mux e32(a[31],b[31],s,y[31]);
endmodule

//module mux24to1

module mux24_1(a0,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,s0,s1,s2,s3,s4,y);
input a0,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23;
input  s0,s1,s2,s3,s4;
wire s0n,s1n,s2n,s3n,s4n;
wire t0,t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12,t13,t14,t15,t16,t17,t18,t19,t20,t21,t22,t23;
wire v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22,v23;
wire u0,u1,u2,u3,u4,u5,u6,u7,u8,u9,u10,u11,u12,u13,u14,u15,u16,u17,u18,u19,u20,u21,u22,u23;
wire r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23;
wire x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23;
wire z0,z1,z2,z3,z4,z5,z6,z7,z8,z9,z10,z11,z12,z13,z14,z15,z16,z17,z18,z19,z20,z21;
output  y;
not(s0n,s0);    	not(s1n,s1);    	not(s2n,s2);    	not(s3n,s3);    	not(s4n,s4);
and(v0,s4n,s3n);    and(u0,s2n,s1n);    and(r0,a0,s0n);     and(x0,v0,u0);      and(t0,r0,x0);
and(v1,s4n,s3n);    and(u1,s2n,s1n);    and(r1,a1,s0);      and(x1,v1,u1);      and(t1,r1,x1);
and(v2,s4n,s3n);    and(u2,s2n,s1);     and(r2,a2,s0n);     and(x2,v2,u2);      and(t2,r2,x2);
and(v3,s4n,s3n);    and(u3,s2n,s1);     and(r3,a3,s0);      and(x3,v3,u3);      and(t3,r3,x3);
and(v4,s4n,s3n);    and(u4,s2,s1n);     and(r4,a4,s0n);     and(x4,v4,u4);      and(t4,r4,x4);
and(v5,s4n,s3n);    and(u5,s2,s1n);     and(r5,a5,s0);      and(x5,v5,u5);      and(t5,r5,x5);
and(v6,s4n,s3n);    and(u6,s2,s1);      and(r6,a6,s0n);     and(x6,v6,u6);      and(t6,r6,x6);
and(v7,s4n,s3n);    and(u7,s2,s1);      and(r7,a7,s0);      and(x7,v7,u7);      and(t7,r7,x7);
and(v8,s4n,s3);     and(u8,s2n,s1n);    and(r8,a8,s0n);     and(x8,v8,u8);      and(t8,r8,x8);
and(v9,s4n,s3);     and(u9,s2n,s1n);    and(r9,a9,s0);      and(x9,v9,u9);      and(t9,r9,x9);
and(v10,s4n,s3);    and(u10,s2n,s1);    and(r10,a10,s0n);   and(x10,v10,u10);   and(t10,r10,x10);
and(v11,s4n,s3);    and(u11,s2n,s1);    and(r11,a11,s0);    and(x11,v11,u11);   and(t11,r11,x11);
and(v12,s4n,s3);    and(u12,s2,s1n);    and(r12,a12,s0n);   and(x12,v12,u12);   and(t12,r12,x12);
and(v13,s4n,s3);    and(u13,s2,s1n);    and(r13,a13,s0);    and(x13,v13,u13);   and(t13,r13,x13);
and(v14,s4n,s3);    and(u14,s2,s1);     and(r14,a14,s0n);   and(x14,v14,u14);   and(t14,r14,x14);
and(v15,s4n,s3);    and(u15,s2,s1);     and(r15,a15,s0);    and(x15,v15,u15);   and(t15,r15,x15);
and(v16,s4,s3n);    and(u16,s2n,s1n);   and(r16,a16,s0n);   and(x16,v16,u16);   and(t16,r16,x16);
and(v17,s4,s3n);    and(u17,s2n,s1n);   and(r17,a17,s0);    and(x17,v17,u17);   and(t17,r17,x17);
and(v18,s4,s3n);    and(u18,s2n,s1);    and(r18,a18,s0n);   and(x18,v18,u18);   and(t18,r18,x18);
and(v19,s4,s3n);    and(u19,s2n,s1);    and(r19,a19,s0);    and(x19,v19,u19);   and(t19,r19,x19);
and(v20,s4,s3n);    and(u20,s2,s1n);    and(r20,a20,s0n);   and(x20,v20,u20);   and(t20,r20,x20);
and(v21,s4,s3n);    and(u21,s2,s1n);    and(r21,a21,s0);    and(x21,v21,u21);   and(t21,r21,x21);
and(v22,s4,s3n);    and(u22,s2,s1);     and(r22,a22,s0n);   and(x22,v22,u22);   and(t22,r22,x22);
and(v23,s4,s3n);    and(u23,s2,s1);     and(r23,a23,s0);    and(x23,v23,u23);   and(t23,r23,x23);

or(z0,t0,t1);       or(z1,t2,t3);       or(z2,t4,t5);       or(z3,t6,t7);       or(z4,t8,t9);       or(z5,t10,t11);
or(z6,t12,t13);     or(z7,t14,t15);     or(z8,t16,t17);     or(z9,t18,t19);     or(z10,t20,t21);
or(z11,t22,t23);    or(z12,z1,z0);      or(z13,z3,z2);      or(z14,z5,z4);      or(z15,z7,z6);      or(z16,z9,z8);
or(z17,z11,z10);    or(z18,z13,z12);    or(z19,z15,z14);    or(z20,z17,z16);    or(z21,z19,z18);    or(y,z21,z20);
endmodule

//module shift phai

module dichphai(a,s,y);
input [23:0] a;
input [4:0] s;
output [23:0] y;
mux24_1 m61(a[23],0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,s[0],s[1],s[2],s[3],s[4],y[23]);
mux24_1 m62(a[22],a[23],0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,s[0],s[1],s[2],s[3],s[4],y[22]);
mux24_1 m63(a[21],a[22],a[23],0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,s[0],s[1],s[2],s[3],s[4],y[21]);
mux24_1 m64(a[20],a[21],a[22],a[23],0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,s[0],s[1],s[2],s[3],s[4],y[20]);
mux24_1 m65(a[19],a[20],a[21],a[22],a[23],0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,s[0],s[1],s[2],s[3],s[4],y[19]);
mux24_1 m66(a[18],a[19],a[20],a[21],a[22],a[23],0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,s[0],s[1],s[2],s[3],s[4],y[18]);
mux24_1 m67(a[17],a[18],a[19],a[20],a[21],a[22],a[23],0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,s[0],s[1],s[2],s[3],s[4],y[17]);
mux24_1 m68(a[16],a[17],a[18],a[19],a[20],a[21],a[22],a[23],0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,s[0],s[1],s[2],s[3],s[4],y[16]);
mux24_1 m69(a[15],a[16],a[17],a[18],a[19],a[20],a[21],a[22],a[23],0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,s[0],s[1],s[2],s[3],s[4],y[15]);
mux24_1 m70(a[14],a[15],a[16],a[17],a[18],a[19],a[20],a[21],a[22],a[23],0,0,0,0,0,0,0,0,0,0,0,0,0,0,s[0],s[1],s[2],s[3],s[4],y[14]);
mux24_1 m71(a[13],a[14],a[15],a[16],a[17],a[18],a[19],a[20],a[21],a[22],a[23],0,0,0,0,0,0,0,0,0,0,0,0,0,s[0],s[1],s[2],s[3],s[4],y[13]);
mux24_1 m72(a[12],a[13],a[14],a[15],a[16],a[17],a[18],a[19],a[20],a[21],a[22],a[23],0,0,0,0,0,0,0,0,0,0,0,0,s[0],s[1],s[2],s[3],s[4],y[12]);
mux24_1 m73(a[11],a[12],a[13],a[14],a[15],a[16],a[17],a[18],a[19],a[20],a[21],a[22],a[23],0,0,0,0,0,0,0,0,0,0,0,s[0],s[1],s[2],s[3],s[4],y[11]);
mux24_1 m74(a[10],a[11],a[12],a[13],a[14],a[15],a[16],a[17],a[18],a[19],a[20],a[21],a[22],a[23],0,0,0,0,0,0,0,0,0,0,s[0],s[1],s[2],s[3],s[4],y[10]);
mux24_1 m75(a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[16],a[17],a[18],a[19],a[20],a[21],a[22],a[23],0,0,0,0,0,0,0,0,0,s[0],s[1],s[2],s[3],s[4],y[9]);
mux24_1 m76(a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[16],a[17],a[18],a[19],a[20],a[21],a[22],a[23],0,0,0,0,0,0,0,0,s[0],s[1],s[2],s[3],s[4],y[8]);
mux24_1 m77(a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[16],a[17],a[18],a[19],a[20],a[21],a[22],a[23],0,0,0,0,0,0,0,s[0],s[1],s[2],s[3],s[4],y[7]);
mux24_1 m78(a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[16],a[17],a[18],a[19],a[20],a[21],a[22],a[23],0,0,0,0,0,0,s[0],s[1],s[2],s[3],s[4],y[6]);
mux24_1 m79(a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[16],a[17],a[18],a[19],a[20],a[21],a[22],a[23],0,0,0,0,0,s[0],s[1],s[2],s[3],s[4],y[5]);
mux24_1 m80(a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[16],a[17],a[18],a[19],a[20],a[21],a[22],a[23],0,0,0,0,s[0],s[1],s[2],s[3],s[4],y[4]);
mux24_1 m81(a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[16],a[17],a[18],a[19],a[20],a[21],a[22],a[23],0,0,0,s[0],s[1],s[2],s[3],s[4],y[3]);
mux24_1 m82(a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[16],a[17],a[18],a[19],a[20],a[21],a[22],a[23],0,0,s[0],s[1],s[2],s[3],s[4],y[2]);
mux24_1 m83(a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[16],a[17],a[18],a[19],a[20],a[21],a[22],a[23],0,s[0],s[1],s[2],s[3],s[4],y[1]);
mux24_1 m84(a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[16],a[17],a[18],a[19],a[20],a[21],a[22],a[23],s[0],s[1],s[2],s[3],s[4],y[0]);
endmodule

//module shift trai

module dichtrai(a,s,y);
input [23:0] a;
input [4:0] s;
output [23:0] y;
mux24_1 m61(a[23],a[22],a[21],a[20],a[19],a[18],a[17],a[16],a[15],a[14],a[13],a[12],a[11],a[10],a[9],a[8],a[7],a[6],a[5],a[4],a[3],a[2],a[1],a[0],s[0],s[1],s[2],s[3],s[4],y[23]);
mux24_1 m62(a[22],a[21],a[20],a[19],a[18],a[17],a[16],a[15],a[14],a[13],a[12],a[11],a[10],a[9], a[8],a[7],a[6],a[5],a[4],a[3],a[2],a[1],a[0],0,   s[0],s[1],s[2],s[3],s[4],y[22]);
mux24_1 m63(a[21],a[20],a[19],a[18],a[17],a[16],a[15],a[14],a[13],a[12],a[11],a[10],a[9], a[8], a[7],a[6],a[5],a[4],a[3],a[2],a[1],a[0],0,   0,   s[0],s[1],s[2],s[3],s[4],y[21]);
mux24_1 m64(a[20],a[19],a[18],a[17],a[16],a[15],a[14],a[13],a[12],a[11],a[10],a[9], a[8], a[7], a[6],a[5],a[4],a[3],a[2],a[1],a[0],0,   0,   0,   s[0],s[1],s[2],s[3],s[4],y[20]);
mux24_1 m65(a[19],a[18],a[17],a[16],a[15],a[14],a[13],a[12],a[11],a[10],a[9], a[8], a[7], a[6], a[5],a[4],a[3],a[2],a[1],a[0],0,   0,   0,   0,   s[0],s[1],s[2],s[3],s[4],y[19]);
mux24_1 m66(a[18],a[17],a[16],a[15],a[14],a[13],a[12],a[11],a[10],a[9], a[8], a[7], a[6], a[5], a[4],a[3],a[2],a[1],a[0],0,   0,   0,   0,   0,   s[0],s[1],s[2],s[3],s[4],y[18]);
mux24_1 m67(a[17],a[16],a[15],a[14],a[13],a[12],a[11],a[10],a[9], a[8], a[7], a[6], a[5], a[4], a[3],a[2],a[1],a[0],0,   0,   0,   0,   0,   0,   s[0],s[1],s[2],s[3],s[4],y[17]);
mux24_1 m68(a[16],a[15],a[14],a[13],a[12],a[11],a[10],a[9], a[8], a[7], a[6], a[5], a[4], a[3], a[2],a[1],a[0],0,   0,   0,   0,   0,   0,   0,   s[0],s[1],s[2],s[3],s[4],y[16]);
mux24_1 m69(a[15],a[14],a[13],a[12],a[11],a[10],a[9], a[8], a[7], a[6], a[5], a[4], a[3], a[2], a[1],a[0],0,   0,   0,   0,   0,   0,   0,   0,   s[0],s[1],s[2],s[3],s[4],y[15]);
mux24_1 m70(a[14],a[13],a[12],a[11],a[10],a[9], a[8], a[7], a[6], a[5], a[4], a[3], a[2], a[1], a[0],0,   0,   0,   0,   0,   0,   0,   0,   0,   s[0],s[1],s[2],s[3],s[4],y[14]);
mux24_1 m71(a[13],a[12],a[11],a[10],a[9], a[8], a[7], a[6], a[5], a[4], a[3], a[2], a[1], a[0], 0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   s[0],s[1],s[2],s[3],s[4],y[13]);
mux24_1 m72(a[12],a[11],a[10],a[9], a[8], a[7], a[6], a[5], a[4], a[3], a[2], a[1], a[0], 0,    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   s[0],s[1],s[2],s[3],s[4],y[12]);
mux24_1 m73(a[11],a[10],a[9], a[8], a[7], a[6], a[5], a[4], a[3], a[2], a[1], a[0], 0,    0,    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   s[0],s[1],s[2],s[3],s[4],y[11]);
mux24_1 m74(a[10],a[9], a[8], a[7], a[6], a[5], a[4], a[3], a[2], a[1], a[0], 0,    0,    0,    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   s[0],s[1],s[2],s[3],s[4],y[10]);
mux24_1 m75(a[9], a[8], a[7], a[6], a[5], a[4], a[3], a[2], a[1], a[0], 0,    0,    0,    0,    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   s[0],s[1],s[2],s[3],s[4],y[9]);
mux24_1 m76(a[8], a[7], a[6], a[5], a[4], a[3], a[2], a[1], a[0], 0,    0,    0,    0,    0,    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   s[0],s[1],s[2],s[3],s[4],y[8]);
mux24_1 m77(a[7], a[6], a[5], a[4], a[3], a[2], a[1], a[0], 0,    0,    0,    0,    0,    0,    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   s[0],s[1],s[2],s[3],s[4],y[7]);
mux24_1 m78(a[6], a[5], a[4], a[3], a[2], a[1], a[0], 0,    0,    0,    0,    0,    0,    0,    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   s[0],s[1],s[2],s[3],s[4],y[6]);
mux24_1 m79(a[5], a[4], a[3], a[2], a[1], a[0], 0,    0,    0,    0,    0,    0,    0,    0,    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   s[0],s[1],s[2],s[3],s[4],y[5]);
mux24_1 m80(a[4], a[3], a[2], a[1], a[0], 0,    0,    0,    0,    0,    0,    0,    0,    0,    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   s[0],s[1],s[2],s[3],s[4],y[4]);
mux24_1 m81(a[3], a[2], a[1], a[0], 0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   s[0],s[1],s[2],s[3],s[4],y[3]);
mux24_1 m82(a[2], a[1], a[0], 0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   s[0],s[1],s[2],s[3],s[4],y[2]);
mux24_1 m83(a[1], a[0], 0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   s[0],s[1],s[2],s[3],s[4],y[1]);
mux24_1 m84(a[0], 0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   s[0],s[1],s[2],s[3],s[4],y[0]);
endmodule

//module shift theo mu

module dichtheomu(a,s,y);
input [23:0] a;
input [7:0] s;
output [23:0] y;
wire [23:0] y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12;
dichphai d1(a,5'b00001,y1);                mux24b m85(a,y1,s[0],y2);
dichphai d2(y2,5'b00010,y3);               mux24b m86(y2,y3,s[1],y4);
dichphai d3(y4,5'b00100,y5);               mux24b m87(y4,y5,s[2],y6);
dichphai d4(y6,5'b01000,y7);               mux24b m88(y6,y7,s[3],y8);
dichphai d5(y8,5'b10000,y9);               mux24b m89(y8,y9,s[4],y10);
mux24b m90(y10,24'b000000000000000000000000,s[5],y11);
mux24b m91(y11,24'b000000000000000000000000,s[6],y12);
mux24b m92(y12,24'b000000000000000000000000,s[7],y);
endmodule

//module encoder24

module encoder24(a0,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,s0,s1,s2,s3,s4);
input    a0,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23;
output   s0,s1,s2,s3,s4;
wire     t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12,t13,t14,t15,t16,t17,t18,t19,t20,t21,t22,t23;
wire     a0n,a1n,a2n,a3n,a4n,a5n,a6n,a7n,a8n,a9n,a10n,a11n,a12n,a13n,a14n,a15n,a16n,a17n,a18n,a19n,a20n,a21n,a22n,a23n;
wire     u1,u2,u3,u4,u5,u6,u7,u8,u9,u10,u11,u12,u13,u14,u15,u16,u17,u18,u19,u20,u21,u22;
wire     v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22,v23,v24,v25,v26,v27,v28,v29,v30,v31,v32,v33,v34,v35,v36,v37,v38,v39,v40,v41,v42;

not (a0n,a0);   not (a1n,a1);   not (a2n,a2);   not (a3n,a3);   not (a4n,a4);   not (a5n,a5);   not (a6n,a6);
not (a7n,a7);   not (a8n,a8);   not (a9n,a9);   not (a10n,a10); not (a11n,a11); not (a12n,a12); not (a13n,a13);
not (a14n,a14); not (a15n,a15); not (a16n,a16); not (a17n,a17); not (a18n,a18); not (a19n,a19); not (a20n,a20);
not (a21n,a21); not (a22n,a22);    not (a23n,a23);

and(t1,a0n,a1);         and(u1,a0n,a1n);      and(t2,u1,a2);
and(u2,u1,a2n);         and(t3,u2,a3);        and(u3,u2,a3n);         and(t4,u3,a4);
and(u4,u3,a4n);         and(t5,u4,a5);        and(u5,u4,a5n);         and(t6,u5,a6);
and(u6,u5,a6n);         and(t7,u6,a7);        and(u7,u6,a7n);         and(t8,u7,a8);
and(u8,u7,a8n);         and(t9,u8,a9);        and(u9,u8,a9n);         and(t10,u9,a10);
and(u10,u9,a10n);       and(t11,u10,a11);     and(u11,u10,a11n);      and(t12,u11,a12);
and(u12,u11,a12n);      and(t13,u12,a13);     and(u13,u12,a13n);      and(t14,u13,a14);
and(u14,u13,a14n);      and(t15,u14,a15);     and(u15,u14,a15n);      and(t16,u15,a16);
and(u16,u15,a16n);      and(t17,u16,a17);     and(u17,u16,a17n);      and(t18,u17,a18);
and(u18,u17,a18n);      and(t19,u18,a19);     and(u19,u18,a19n);      and(t20,u19,a20);
and(u20,u19,a20n);      and(t21,u20,a21);     and(u21,u20,a21n);      and(t22,u21,a22);
and(u22,u21,a22n);      and(t23,u22,a23);

or(v1,t1,t3);           or(v2,t5,t7);         or(v3,t9,t11);          or(v4,t13,t15);
or(v5,t17,t19);         or(v6,t21,t23);       or(v7,v1,v2);           or(v8,v3,v4);
or(v9,v5,v6);           or(v10,v7,v8);        or(s0,v9,v10);

or(v11,t2,t3);          or(v12,t6,t7);        or(v13,t10,t11);        or(v14,t14,t15);
or(v15,t18,t19);        or(v16,t22,t23);      or(v17,v11,v12);        or(v18,v13,v14);
or(v19,v15,v16);        or(v20,v17,v18);      or(s1,v19,v20);

or(v21,t4,t5);          or(v22,t6,t7);        or(v23,t12,t13);        or(v24,t14,t15);
or(v25,t20,t21);        or(v26,t22,t23);      or(v27,v21,v12);        or(v28,v23,v14);
or(v29,v25,v16);        or(v30,v27,v28);      or(s2,v29,v30);

or(v31,t8,t9);          or(v32,t10,t11);      or(v33,t12,t13);        or(v34,t14,t15);
or(v35,v31,v32);        or(v36,v33,v34);      or(s3,v35,v36);

or(v37,t16,t17);        or(v38,t18,t19);      or(v39,t20,t21);        or(v40,t22,t23);
or(v41,v37,v38);        or(v42,v39,v40);      or(s4,v41,v42);

endmodule

//module timbit1 

module timbit1(a,y);
input [23:0] a;
output   [4:0] y;
encoder24 en1(a[23],a[22],a[21],a[20],a[19],a[18],a[17],a[16],a[15],a[14],a[13],a[12],a[11],a[10],a[9],a[8],a[7],a[6],a[5],a[4],a[3],a[2],a[1],a[0],y[0],y[1],y[2],y[3],y[4]);
endmodule

//module bu1 24bit

module bu1_24b(a,a_n);
input [23:0] a;
output    [23:0] a_n;
not(a_n[0],a[0]);    not(a_n[1],a[1]);      not(a_n[2],a[2]);           not(a_n[3],a[3]);           not(a_n[4],a[4]);
not(a_n[5],a[5]);    not(a_n[6],a[6]);      not(a_n[7],a[7]);           not(a_n[8],a[8]);           not(a_n[9],a[9]);
not(a_n[10],a[10]);  not(a_n[11],a[11]);     not(a_n[12],a[12]);          not(a_n[13],a[13]);          not(a_n[14],a[14]);
not(a_n[15],a[15]);  not(a_n[16],a[16]);     not(a_n[17],a[17]);          not(a_n[18],a[18]);          not(a_n[19],a[19]);
not(a_n[20],a[20]);  not(a_n[21],a[21]);     not(a_n[22],a[22]);          not(a_n[23],a[23]);
endmodule

//module bu2 24bit

module bu2_24b(a,y);
input [23:0] a;
output [24:0] y;
wire [23:0] n_a;
bu1_24b bu1(a[23:0],n_a[23:0]);
Cong24 co1(n_a[23:0],24'b1,y[23:0],y[24]);
endmodule

//module mux4to1 32 bit

module mux4to1(a0,a1,a2,a3,s1,s0,y);
input  [31:0] a0,a1,a2,a3;
input  s0,s1;
output [31:0]y;
wire   [31:0] y1,y2;
mux32b m96(a0[31:0],a1[31:0],s0,y1[31:0]);
mux32b m97(a2[31:0],a3[31:0],s0,y2[31:0]);
mux32b m98(y1[31:0],y2[31:0],s1,y[31:0]);
endmodule

//module truong hop dac biet

module Dacbiet(a,inf,NaN,zero);
    input [31:0]a;
    output inf,NaN,zero;
    wire ctp,ctp_out1,ctp_out2,cmu;

    Tru8 tr1(a[30:23],8'b1,,zero);

    Tru23 tr2(a[22:0],23'b1,,ctp);
    Cong8 co1(a[30:23],8'b1,,cmu);
    mux m102(0,1,ctp,ctp_out1);
    mux m103(0,ctp_out1,cmu,inf);

    not(ctp_out2,ctp);
    mux m105(0,ctp_out2,cmu,NaN);
endmodule

//module so sanh A va B

module AeqB(A,B,AeqB);
    input [31:0]A,B;
    output AeqB;
    wire [31:0]C;

    xor (C[0],A[0],B[0]);
    xor (C[1],A[1],B[1]);
    xor (C[2],A[2],B[2]);
    xor (C[3],A[3],B[3]);
    xor (C[4],A[4],B[4]);
    xor (C[5],A[5],B[5]);
    xor (C[6],A[6],B[6]);
    xor (C[7],A[7],B[7]);
    xor (C[8],A[8],B[8]);
    xor (C[9],A[9],B[9]);
    xor (C[10],A[10],B[10]);
    xor (C[11],A[11],B[11]);
    xor (C[12],A[12],B[12]);
    xor (C[13],A[13],B[13]);
    xor (C[14],A[14],B[14]);
    xor (C[15],A[15],B[15]);
    xor (C[16],A[16],B[16]);
    xor (C[17],A[17],B[17]);
    xor (C[18],A[18],B[18]);
    xor (C[19],A[19],B[19]);
    xor (C[20],A[20],B[20]);
    xor (C[21],A[21],B[21]);
    xor (C[22],A[22],B[22]);
    xor (C[23],A[23],B[23]);
    xor (C[24],A[24],B[24]);
    xor (C[25],A[25],B[25]);
    xor (C[26],A[26],B[26]);
    xor (C[27],A[27],B[27]);
    xor (C[28],A[28],B[28]);
    xor (C[29],A[29],B[29]);
    xor (C[30],A[30],B[30]);
    xor (C[31],A[31],B[31]);

Tru32 Tr(C[31:0],32'b1,,AeqB);

endmodule

//module A cong B

module ACongB(A,B,S);
input [31:0] A,B;
output [31:0] S;

wire dautong;
wire [7:0]  exA,exB,hieumu,mulon,muthem1,muAcongB;
wire [8:0] exS,bu2exS;
wire [22:0] tpAcongB;
wire [23:0] tpA,tpB,somunho,somulon,sodadich,tong;

assign tpA[23:0] = {1'b1,A[22:0]};
assign tpB[23:0] = {1'b1,B[22:0]};

small_alu b2(A[30:23],B[30:23],exS[8:0]);
bu2_8b b1(exS[7:0],bu2exS[8:0]);
mux8b m96(exS[7:0],bu2exS[7:0],exS[8],hieumu[7:0]);

mux24b m97(tpB[23:0],tpA,exS[8],somunho);
mux24b m98(tpA[23:0],tpB,exS[8],somulon);

dichtheomu d5(somunho[23:0],hieumu[7:0],sodadich[23:0]);
Cong24 d4(somulon[23:0],sodadich[23:0],tong[23:0],dautong);

mux23b m99(tong[22:0],tong[23:1],dautong,tpAcongB[22:0]);
mux8b m100(A[30:23],B[30:23],exS[8],mulon[7:0]);
Cong8 co1(mulon[7:0],8'b1,muthem1[7:0],);
mux8b m101(mulon[7:0],muthem1[7:0],dautong,muAcongB[7:0]);

assign S={1'b0,muAcongB[7:0],tpAcongB[22:0]};

endmodule

// module A cong B hoan thanh

module ACongB_Final(A,B,AcB_final);
    input [31:0]A,B;
    output [31:0]AcB_final;
    wire [31:0]ACongB,Inf,NaN,zero,o1,o2,o3,o4,o5,o6;
    wire infA,nanA,zeroA,infB,nanB,zeroB;

    assign Inf =32'b0_11111111_00000000000000000000000;
    assign NaN =32'b0_11111111_11111111111111111111111;
    assign zero=32'b0_00000000_00000000000000000000000;

    ACongB d1(A[31:0],B[31:0],ACongB[31:0]);
    Dacbiet q1(A[31:0],infA,nanA,zeroA);
    Dacbiet q2(B[31:0],infB,nanB,zeroB);

    mux32b m1(ACongB[31:0],A[31:0],zeroB,o1[31:0]);
    mux32b m2(o1[31:0],Inf[31:0],infB,o2[31:0]);
    mux32b m3(o2[31:0],NaN[31:0],nanB,o3[31:0]);
    mux32b m4(Inf[31:0],NaN[31:0],nanB,o4[31:0]);
    mux32b m5(o3[31:0],o4[31:0],infA,o5[31:0]);
    mux32b m6(o5[31:0],B[31:0],zeroA,o6[31:0]);
    mux32b m7(o6[31:0],NaN[31:0],nanA,AcB_final[31:0]);
endmodule

//module 

module TruATruB_Final(A,B,tAtB_final);
    input [31:0]A,B;
    output [31:0]tAtB_final;
    wire tAtB;
    wire [31:0]AcB_final;
    ACongB_Final d1(A[31:0],B[31:0],AcB_final[31:0]);
    not(tAtB,AcB_final[31]);
    assign tAtB_final[31:0]={tAtB,AcB_final[30:0]};
	endmodule

//module A tru B

module ATruB(A,B,S,AtruB,kqAtruB);
input [31:0] A,B;
output [31:0] S;
output [23:0] kqAtruB,AtruB;

wire dauA_dichB,daudichA_B,daumu,dauA_B,sel;
wire [4:0] sohieudinh;
wire [7:0]  exA,exB,hieumu,muAB,kqmuAB;
wire [8:0] exS,bu2exS;

wire [23:0] tpA,tpB,dichA,dichB,AdichB,dichAB,sub1,sub2,AtruB,kqAtruB;
wire [24:0] n_AdichB,n_dichAB;
wire [31:0] kqA_B;

assign tpA[23:0] = {1'b1,A[22:0]};
assign tpB[23:0] = {1'b1,B[22:0]};

small_alu b2(A[30:23],B[30:23],exS[8:0]);
bu2_8b b1(exS[7:0],bu2exS[8:0]);
mux8b m96(exS[7:0],bu2exS[7:0],exS[8],hieumu[7:0]);

dichtheomu d1(tpA[23:0],hieumu[7:0],dichA[23:0]);
dichtheomu d2(tpB[23:0],hieumu[7:0],dichB[23:0]);

Tru24 tr1(tpA[23:0],dichB[23:0],AdichB[23:0],dauA_dichB);
bu2_24b bu1(AdichB[23:0],n_AdichB[24:0]);
mux24b m1(AdichB[23:0],n_AdichB[23:0],dauA_dichB,sub1[23:0]);

Tru24 tr2(dichA[23:0],tpB[23:0],dichAB[23:0],daudichA_B);
bu2_24b bu2(dichAB[23:0],n_dichAB[24:0]);
mux24b m2(dichAB[23:0],n_dichAB[23:0],daudichA_B,sub2[23:0]);

mux24b m3(sub1[23:0],sub2[23:0],exS[8],AtruB[23:0]);
timbit1 ti1(AtruB[23:0],sohieudinh[4:0]);
dichtrai di1(AtruB[23:0],sohieudinh[4:0],kqAtruB[23:0]);
mux8b m4(A[30:23],B[30:23],exS[8],muAB[7:0]);
Tru8 tu(muAB[7:0],{3'b000,sohieudinh[4:0]},kqmuAB[7:0],);

mux mu3(dauA_dichB,daudichA_B,exS[8],dauA_B);

assign S[31:0]={dauA_B,kqmuAB[7:0],kqAtruB[22:0]};


endmodule

// module A tru B hoan thanh 

module ATruB_Final(A,B,AtB_final);
    input [31:0]A,B;
    output [31:0]AtB_final;
    wire [31:0]Inf,NaN,zero,TruB,Truinf,ATruB,o0,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10;
    wire infA,nanA,zeroA,infB,nanB,zeroB,AeqB;

    assign Inf= 32'b01111111100000000000000000000000;
    assign NaN= 32'b01111111111111111111111111111111;
    assign zero=32'b00000000000000000000000000000000;
    assign TruB[31:0]={1'b1,B[30:0]};
    assign Truinf=32'b11111111100000000000000000000000;
    ATruB z(A[31:0],B[31:0],ATruB[31:0]);
    Dacbiet i1(A[31:0],infA,nanA,zeroA);
    Dacbiet i2(B[31:0],infB,nanB,zeroB);
    AeqB i3(A,B,AeqB);

    mux32b m0(ATruB[31:0],zero[31:0],AeqB,o0[31:0]);
    mux32b m1(o0[31:0],A[31:0],zeroB,o1[31:0]);
    mux32b m2(o1[31:0],Truinf[31:0],infB,o2[31:0]);
    mux32b m3(o2[31:0],NaN[31:0],nanB,o3[31:0]);
    mux32b m4(Inf[31:0],NaN[31:0],infB,o4[31:0]);
    mux32b m5(o4[31:0],NaN[31:0],nanB,o5[31:0]);
    mux32b m6(TruB[31:0],zero[31:0],zeroB,o6[31:0]);
    mux32b m7(o6[31:0],Truinf[31:0],infB,o7[31:0]);
    mux32b m8(o7[31:0],NaN[31:0],nanB,o8[31:0]);
    mux32b m9(o3[31:0],o5[31:0],infA,o9[31:0]);
    mux32b me(o9[31:0],o8[31:0],zeroA,o10[31:0]);
    mux32b mt(o10[31:0],NaN[31:0],nanA,AtB_final[31:0]);
endmodule

// module tru A cong B

module TruACongB_Final(A,B,tAcB_final);
    input [31:0]A,B;
    output [31:0]tAcB_final;
    wire [31:0]AtB_final;
    wire tn;
    ATruB_Final at1(A[31:0],B[31:0],AtB_final[31:0]);
    not (tn,AtB_final[31]);
    assign tAcB_final[31:0]={tn,AtB_final[30:0]};
endmodule

//module bo cong 

module Bo_Cong(a,b,s);
    input [31:0]a,b;
    output [31:0]s;
    wire [31:0] ta,tb,t0,t1,t2,t3;

    assign ta[31:0]={1'b0,a[30:0]};
    assign tb[31:0]={1'b0,b[30:0]};

    ACongB_Final w1(ta[31:0],tb[31:0],t0[31:0]);
    ATruB_Final  w2(ta[31:0],tb[31:0],t1[31:0]);
    TruACongB_Final w3(ta[31:0],tb[31:0],t2[31:0]);
    TruATruB_Final w4(ta[31:0],tb[31:0],t3[31:0]);
    mux4to1 mux3(t0[31:0],t1[31:0],t2[31:0],t3[31:0],a[31],b[31],s[31:0]);
endmodule

//module bo tru 

module Bo_Tru(a,b,s);
    input [31:0]a,b;
    output [31:0]s;
    wire [31:0] ta,tb,t0,t1,t2,t3;

    assign ta[31:0]={1'b0,a[30:0]};
    assign tb[31:0]={1'b0,b[30:0]};

    ACongB_Final w1(ta[31:0],tb[31:0],t0);
    ATruB_Final w2(ta[31:0],tb[31:0],t1);
    TruACongB_Final w3(ta[31:0],tb[31:0],t2);
    TruATruB_Final w4(ta[31:0],tb[31:0],t3);
    mux4to1 mux1(t1,t0,t3,t2,a[31],b[31],s);
endmodule

//module mux48to1 1bit

module mux48_1(a47,a46,a45,a44,a43,a42,a41,a40,a39,a38,a37,a36,a35,a34,a33,a32,a31,a30,a29,a28,a27,a26,a25,a24,a23,a22,a21,a20,a19,a18,a17,a16,a15,a14,a13,a12,a11,a10,a9,a8,a7,a6,a5,a4,a3,a2,a1,a0,s5,s4,s3,s2,s1,s0,y);
input a47,a46,a45,a44,a43,a42,a41,a40,a39,a38,a37,a36,a35,a34,a33,a32,a31,a30,a29,a28,a27,a26,a25,a24,a23,a22,a21,a20,a19,a18,a17,a16,a15,a14,a13,a12,a11,a10,a9,a8,a7,a6,a5,a4,a3,a2,a1,a0;
input s5,s4,s3,s2,s1,s0;
output y;
wire s5n,s4n,s3n,s2n,s1n,s0n;
wire t0,t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12,t13,t14,t15,t16,t17,t18,t19,t20,t21,t22,t23,t24,t25,t26,t27,t28,t29,t30,t31,t32,t33,t34,t35,t36,t37,t38,t39,t40,t41,t42,t43,t44,t45,t46,t47;
wire v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,v21,v22,v23,v24,v25,v26,v27,v28,v29,v30,v31,v32,v33,v34,v35,v36,v37,v38,v39,v40,v41,v42,v43,v44,v45,v46,v47;
wire u0,u1,u2,u3,u4,u5,u6,u7,u8,u9,u10,u11,u12,u13,u14,u15,u16,u17,u18,u19,u20,u21,u22,u23,u24,u25,u26,u27,u28,u29,u30,u31,u32,u33,u34,u35,u36,u37,u38,u39,u40,u41,u42,u43,u44,u45,u46,u47;
wire x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47;
wire z0,z1,z2,z3,z4,z5,z6,z7,z8,z9,z10,z11,z12,z13,z14,z15,z16,z17,z18,z19,z20,z21,z22,z23,z24,z25,z26,z27,z28,z29,z30,z31,z32,z33,z34,z35,z36,z37,z38,z39,z40,z41,z42,z43,z44,z45,z46,z47;
wire o0,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,o11,o12,o13,o14,o15,o16,o17,o18,o19,o20,o21,o22,o23,o24,o25,o26,o27,o28,o29,o30,o31,o32,o33,o34,o35,o36,o37,o38,o39,o40,o41,o42,o43,o44,o45,o46,o47;
wire r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38,r39,r40,r41,r42,r43,r44,r45,r46,r47;

not(s0n,s0); not(s1n,s1); not(s2n,s2); not(s3n,s3); not(s4n,s4); not(s5n,s5);
and(z0,a0,s5n);    and(o0,s4n,s3n);   and(v0,s2n,s1n);   and(x0,z0,s0n);     and(u0,o0,v0);    and(t0,x0,u0);
and(z1,a1,s5n);    and(o1,s4n,s3n);   and(v1,s2n,s1n);   and(x1,z1,s0);      and(u1,o1,v1);    and(t1,x1,u1);
and(z2,a2,s5n);    and(o2,s4n,s3n);   and(v2,s2n,s1);    and(x2,z2,s0n);     and(u2,o2,v2);    and(t2,x2,u2);
and(z3,a3,s5n);    and(o3,s4n,s3n);   and(v3,s2n,s1);    and(x3,z3,s0);      and(u3,o3,v3);    and(t3,x3,u3);
and(z4,a4,s5n);    and(o4,s4n,s3n);   and(v4,s2,s1n);    and(x4,z4,s0n);     and(u4,o4,v4);    and(t4,x4,u4);
and(z5,a5,s5n);    and(o5,s4n,s3n);   and(v5,s2,s1n);    and(x5,z5,s0);      and(u5,o5,v5);    and(t5,x5,u5);
and(z6,a6,s5n);    and(o6,s4n,s3n);   and(v6,s2,s1);     and(x6,z6,s0n);     and(u6,o6,v6);    and(t6,x6,u6);
and(z7,a7,s5n);    and(o7,s4n,s3n);   and(v7,s2,s1);     and(x7,z7,s0);      and(u7,o7,v7);    and(t7,x7,u7);
and(z8,a8,s5n);    and(o8,s4n,s3);    and(v8,s2n,s1n);   and(x8,z8,s0n);     and(u8,o8,v8);    and(t8,x8,u8);
and(z9,a9,s5n);    and(o9,s4n,s3);    and(v9,s2n,s1n);   and(x9,z9,s0);      and(u9,o9,v9);    and(t9,x9,u9);
and(z10,a10,s5n);   and(o10,s4n,s3);   and(v10,s2n,s1);   and(x10,z10,s0n);   and(u10,o10,v10); and(t10,x10,u10);
and(z11,a11,s5n);   and(o11,s4n,s3);   and(v11,s2n,s1);   and(x11,z11,s0);    and(u11,o11,v11); and(t11,x11,u11);
and(z12,a12,s5n);   and(o12,s4n,s3);   and(v12,s2,s1n);   and(x12,z12,s0n);   and(u12,o12,v12); and(t12,x12,u12);
and(z13,a13,s5n);   and(o13,s4n,s3);   and(v13,s2,s1n);   and(x13,z13,s0);    and(u13,o13,v13); and(t13,x13,u13);
and(z14,a14,s5n);   and(o14,s4n,s3);   and(v14,s2,s1);    and(x14,z14,s0n);   and(u14,o14,v14); and(t14,x14,u14);
and(z15,a15,s5n);   and(o15,s4n,s3);   and(v15,s2,s1);    and(x15,z15,s0);    and(u15,o15,v15); and(t15,x15,u15);
and(z16,a16,s5n);   and(o16,s4,s3n);   and(v16,s2n,s1n);  and(x16,z16,s0n);   and(u16,o16,v16); and(t16,x16,u16);
and(z17,a17,s5n);   and(o17,s4,s3n);   and(v17,s2n,s1n);  and(x17,z17,s0);    and(u17,o17,v17); and(t17,x17,u17);
and(z18,a18,s5n);   and(o18,s4,s3n);   and(v18,s2n,s1);   and(x18,z18,s0n);   and(u18,o18,v18); and(t18,x18,u18);
and(z19,a19,s5n);   and(o19,s4,s3n);   and(v19,s2n,s1);   and(x19,z19,s0);    and(u19,o19,v19); and(t19,x19,u19);
and(z20,a20,s5n);   and(o20,s4,s3n);   and(v20,s2,s1n);   and(x20,z20,s0n);   and(u20,o20,v20); and(t20,x20,u20);
and(z21,a21,s5n);   and(o21,s4,s3n);   and(v21,s2,s1n);   and(x21,z21,s0);    and(u21,o21,v21); and(t21,x21,u21);
and(z22,a22,s5n);   and(o22,s4,s3n);   and(v22,s2,s1);    and(x22,z22,s0n);   and(u22,o22,v22); and(t22,x22,u22);
and(z23,a23,s5n);   and(o23,s4,s3n);   and(v23,s2,s1);    and(x23,z23,s0);    and(u23,o23,v23); and(t23,x23,u23);
and(z24,a24,s5n);   and(o24,s4,s3);    and(v24,s2n,s1n);  and(x24,z24,s0n);   and(u24,o24,v24); and(t24,x24,u24);
and(z25,a25,s5n);   and(o25,s4,s3);    and(v25,s2n,s1n);  and(x25,z25,s0);    and(u25,o25,v25); and(t25,x25,u25);
and(z26,a26,s5n);   and(o26,s4,s3);    and(v26,s2n,s1);   and(x26,z26,s0n);   and(u26,o26,v26); and(t26,x26,u26);
and(z27,a27,s5n);   and(o27,s4,s3);    and(v27,s2n,s1);   and(x27,z27,s0);    and(u27,o27,v27); and(t27,x27,u27);
and(z28,a28,s5n);   and(o28,s4,s3);    and(v28,s2,s1n);   and(x28,z28,s0n);   and(u28,o28,v28); and(t28,x28,u28);
and(z29,a29,s5n);   and(o29,s4,s3);    and(v29,s2,s1n);   and(x29,z29,s0);    and(u29,o29,v29); and(t29,x29,u29);
and(z30,a30,s5n);   and(o30,s4,s3);    and(v30,s2,s1);    and(x30,z30,s0n);   and(u30,o30,v30); and(t30,x30,u30);
and(z31,a31,s5n);   and(o31,s4,s3);    and(v31,s2,s1);    and(x31,z31,s0);    and(u31,o31,v31); and(t31,x31,u31);
and(z32,a32,s5);    and(o32,s4n,s3n);  and(v32,s2n,s1n);  and(x32,z32,s0n);   and(u32,o32,v32); and(t32,x32,u32);
and(z33,a33,s5);    and(o33,s4n,s3n);  and(v33,s2n,s1n);  and(x33,z33,s0);    and(u33,o33,v33); and(t33,x33,u33);
and(z34,a34,s5);    and(o34,s4n,s3n);  and(v34,s2n,s1);   and(x34,z34,s0n);   and(u34,o34,v34); and(t34,x34,u34);
and(z35,a35,s5);    and(o35,s4n,s3n);  and(v35,s2n,s1);   and(x35,z35,s0);    and(u35,o35,v35); and(t35,x35,u35);
and(z36,a36,s5);    and(o36,s4n,s3n);  and(v36,s2,s1n);   and(x36,z36,s0n);   and(u36,o36,v36); and(t36,x36,u36);
and(z37,a37,s5);    and(o37,s4n,s3n);  and(v37,s2,s1n);   and(x37,z37,s0);    and(u37,o37,v37); and(t37,x37,u37);
and(z38,a38,s5);    and(o38,s4n,s3n);  and(v38,s2,s1);    and(x38,z38,s0n);   and(u38,o38,v38); and(t38,x38,u38);
and(z39,a39,s5);    and(o39,s4n,s3n);  and(v39,s2,s1);    and(x39,z39,s0);    and(u39,o39,v39); and(t39,x39,u39);
and(z40,a40,s5);    and(o40,s4n,s3);   and(v40,s2n,s1n);  and(x40,z40,s0n);   and(u40,o40,v40); and(t40,x40,u40);
and(z41,a41,s5);    and(o41,s4n,s3);   and(v41,s2n,s1n);  and(x41,z41,s0);    and(u41,o41,v41); and(t41,x41,u41);
and(z42,a42,s5);    and(o42,s4n,s3);   and(v42,s2n,s1);   and(x42,z42,s0n);   and(u42,o42,v42); and(t42,x42,u42);
and(z43,a43,s5);    and(o43,s4n,s3);   and(v43,s2n,s1);   and(x43,z43,s0);    and(u43,o43,v43); and(t43,x43,u43);
and(z44,a44,s5);    and(o44,s4n,s3);   and(v44,s2,s1n);   and(x44,z44,s0n);   and(u44,o44,v44); and(t44,x44,u44);
and(z45,a45,s5);    and(o45,s4n,s3);   and(v45,s2,s1n);   and(x45,z45,s0);    and(u45,o45,v45); and(t45,x45,u45);
and(z46,a46,s5);    and(o46,s4n,s3);   and(v46,s2,s1);    and(x46,z46,s0n);   and(u46,o46,v46); and(t46,x46,u46);
and(z47,a47,s5);    and(o47,s4n,s3);   and(v47,s2,s1);    and(x47,z47,s0);    and(u47,o47,v47); and(t47,x47,u47);

or(r0,t0,t1); or(r1,t2,t3); or(r2,t4,t5); or(r3,t6,t7); or(r4,t8,t9); or(r5,t10,t11); or(r6,t12,t13);
or(r7,t14,t15); or(r8,t16,t17); or(r9,t18,t19); or(r10,t20,t21); or(r11,t22,t23); or(r12,t24,t25);
or(r13,t26,t27); or(r14,t28,t29); or(r15,t30,t31); or(r16,t32,t33); or(r17,t34,t35); or(r18,t36,t37); or(r19,t38,t39);
or(r20,t40,t41); or(r21,t42,t43); or(r22,t44,t45); or(r23,t46,t47); or(r24,r0,r1); or(r25,r2,r3); or(r26,r4,r5); or(r27,r6,r7);
or(r28,r8,r9); or(r29,r10,r11); or(r30,r12,r13); or(r31,r14,r15); or(r32,r16,r17); or(r33,r18,r19); or(r34,r20,r21);
or(r35,r22,r23); or(r36,r24,r25); or(r37,r26,r27); or(r38,r28,r29); or(r39,r30,r31); or(r40,r32,r33); or(r41,r34,r35);
or(r42,r36,r37); or(r43,r38,r39); or(r44,r40,r41); or(r45,r42,r43); or(y,r44,r45);
endmodule

//module dich trai 48bit

module dichtrai48(a,s,y);
input [23:0] a;
input [5:0] s;
output [47:0] y;
 mux48_1 m01(0   ,0   ,0   ,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,a[0],s[5],s[4],s[3],s[2],s[1],s[0],y[0]);
 mux48_1 m02(0   ,0   ,0   ,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,a[0],a[1],s[5],s[4],s[3],s[2],s[1],s[0],y[1]);
 mux48_1 m03(0   ,0   ,0   ,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,a[0],a[1],a[2],s[5],s[4],s[3],s[2],s[1],s[0],y[2]);
 mux48_1 m04(0   ,0   ,0   ,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,a[0],a[1],a[2],a[3],s[5],s[4],s[3],s[2],s[1],s[0],y[3]);
 mux48_1 m05(0   ,0   ,0   ,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,a[0],a[1],a[2],a[3],a[4],s[5],s[4],s[3],s[2],s[1],s[0],y[4]);
 mux48_1 m06(0   ,0   ,0   ,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,a[0],a[1],a[2],a[3],a[4],a[5],s[5],s[4],s[3],s[2],s[1],s[0],y[5]);
 mux48_1 m07(0   ,0   ,0   ,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],s[5],s[4],s[3],s[2],s[1],s[0],y[6]);
 mux48_1 m08(0   ,0   ,0   ,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],s[5],s[4],s[3],s[2],s[1],s[0],y[7]);
 mux48_1 m09(0   ,0   ,0   ,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],s[5],s[4],s[3],s[2],s[1],s[0],y[8]);
 mux48_1 m10(0   ,0   ,0   ,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],s[5],s[4],s[3],s[2],s[1],s[0],y[9]);
 mux48_1 m11(0   ,0   ,0   ,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],s[5],s[4],s[3],s[2],s[1],s[0],y[10]);
 mux48_1 m12(0   ,0   ,0   ,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],s[5],s[4],s[3],s[2],s[1],s[0],y[11]);
 mux48_1 m13(0   ,0   ,0   ,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],s[5],s[4],s[3],s[2],s[1],s[0],y[12]);
 mux48_1 m14(0   ,0   ,0   ,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],s[5],s[4],s[3],s[2],s[1],s[0],y[13]);
 mux48_1 m15(0   ,0   ,0   ,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],s[5],s[4],s[3],s[2],s[1],s[0],y[14]);
 mux48_1 m16(0   ,0   ,0   ,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],s[5],s[4],s[3],s[2],s[1],s[0],y[15]);
 mux48_1 m17(0   ,0   ,0   ,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[16],s[5],s[4],s[3],s[2],s[1],s[0],y[16]);
 mux48_1 m18(0   ,0   ,0   ,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[16],a[17],s[5],s[4],s[3],s[2],s[1],s[0],y[17]);
 mux48_1 m19(0   ,0   ,0   ,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[16],a[17],a[18],s[5],s[4],s[3],s[2],s[1],s[0],y[18]);
 mux48_1 m20(0   ,0   ,0   ,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[16],a[17],a[18],a[19],s[5],s[4],s[3],s[2],s[1],s[0],y[19]);
 mux48_1 m21(0   ,0   ,0   ,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[16],a[17],a[18],a[19],a[20],s[5],s[4],s[3],s[2],s[1],s[0],y[20]);
 mux48_1 m22(0   ,0   ,0   ,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[16],a[17],a[18],a[19],a[20],a[21],s[5],s[4],s[3],s[2],s[1],s[0],y[21]);
 mux48_1 m23(0   ,0   ,0   ,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[16],a[17],a[18],a[19],a[20],a[21],a[22],s[5],s[4],s[3],s[2],s[1],s[0],y[22]);
 mux48_1 m24(0   ,0   ,0   ,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[16],a[17],a[18],a[19],a[20],a[21],a[22],a[23],s[5],s[4],s[3],s[2],s[1],s[0],y[23]);
 mux48_1 m25(0   ,0   ,0   ,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[16],a[17],a[18],a[19],a[20],a[21],a[22],a[23],0,s[5],s[4],s[3],s[2],s[1],s[0],y[24]);
 mux48_1 m26(0   ,0   ,0   ,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[16],a[17],a[18],a[19],a[20],a[21],a[22],a[23],0,0,s[5],s[4],s[3],s[2],s[1],s[0],y[25]);
 mux48_1 m27(0   ,0   ,0   ,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[16],a[17],a[18],a[19],a[20],a[21],a[22],a[23],0,0,0,s[5],s[4],s[3],s[2],s[1],s[0],y[26]);
 mux48_1 m28(0   ,0   ,0   ,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[16],a[17],a[18],a[19],a[20],a[21],a[22],a[23],0,0,0,0,s[5],s[4],s[3],s[2],s[1],s[0],y[27]);
 mux48_1 m29(0   ,0   ,0   ,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[16],a[17],a[18],a[19],a[20],a[21],a[22],a[23],0,0,0,0,0,s[5],s[4],s[3],s[2],s[1],s[0],y[28]);
 mux48_1 m30(0   ,0   ,0   ,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[16],a[17],a[18],a[19],a[20],a[21],a[22],a[23],0,0,0,0,0,0,s[5],s[4],s[3],s[2],s[1],s[0],y[29]);
 mux48_1 m31(0   ,0   ,0   ,0,0,0,0,0,0,0,0,0,0,0,0,0,0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[16],a[17],a[18],a[19],a[20],a[21],a[22],a[23],0,0,0,0,0,0,0,s[5],s[4],s[3],s[2],s[1],s[0],y[30]);
 mux48_1 m32(0   ,0   ,0   ,0,0,0,0,0,0,0,0,0,0,0,0,0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[16],a[17],a[18],a[19],a[20],a[21],a[22],a[23],0,0,0,0,0,0,0,0,s[5],s[4],s[3],s[2],s[1],s[0],y[31]);
 mux48_1 m33(0   ,0   ,0   ,0,0,0,0,0,0,0,0,0,0,0,0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[16],a[17],a[18],a[19],a[20],a[21],a[22],a[23],0,0,0,0,0,0,0,0,0,s[5],s[4],s[3],s[2],s[1],s[0],y[32]);
 mux48_1 m34(0   ,0   ,0   ,0,0,0,0,0,0,0,0,0,0,0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[16],a[17],a[18],a[19],a[20],a[21],a[22],a[23],0,0,0,0,0,0,0,0,0,0,s[5],s[4],s[3],s[2],s[1],s[0],y[33]);
 mux48_1 m35(0   ,0   ,0   ,0,0,0,0,0,0,0,0,0,0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[16],a[17],a[18],a[19],a[20],a[21],a[22],a[23],0,0,0,0,0,0,0,0,0,0,0,s[5],s[4],s[3],s[2],s[1],s[0],y[34]);
 mux48_1 m36(0   ,0   ,0   ,0,0,0,0,0,0,0,0,0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[16],a[17],a[18],a[19],a[20],a[21],a[22],a[23],0,0,0,0,0,0,0,0,0,0,0,0,s[5],s[4],s[3],s[2],s[1],s[0],y[35]);
 mux48_1 m37(0   ,0   ,0   ,0,0,0,0,0,0,0,0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[16],a[17],a[18],a[19],a[20],a[21],a[22],a[23],0,0,0,0,0,0,0,0,0,0,0,0,0,s[5],s[4],s[3],s[2],s[1],s[0],y[36]);
 mux48_1 m38(0   ,0   ,0   ,0,0,0,0,0,0,0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[16],a[17],a[18],a[19],a[20],a[21],a[22],a[23],0,0,0,0,0,0,0,0,0,0,0,0,0,0,s[5],s[4],s[3],s[2],s[1],s[0],y[37]);
 mux48_1 m39(0   ,0   ,0   ,0,0,0,0,0,0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[16],a[17],a[18],a[19],a[20],a[21],a[22],a[23],0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,s[5],s[4],s[3],s[2],s[1],s[0],y[38]);
 mux48_1 m40(0   ,0   ,0   ,0,0,0,0,0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[16],a[17],a[18],a[19],a[20],a[21],a[22],a[23],0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,s[5],s[4],s[3],s[2],s[1],s[0],y[39]);
 mux48_1 m41(0   ,0   ,0   ,0,0,0,0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[16],a[17],a[18],a[19],a[20],a[21],a[22],a[23],0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,s[5],s[4],s[3],s[2],s[1],s[0],y[40]);
 mux48_1 m42(0   ,0   ,0   ,0,0,0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[16],a[17],a[18],a[19],a[20],a[21],a[22],a[23],0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,s[5],s[4],s[3],s[2],s[1],s[0],y[41]);
 mux48_1 m43(0   ,0   ,0   ,0,0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[16],a[17],a[18],a[19],a[20],a[21],a[22],a[23],0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,s[5],s[4],s[3],s[2],s[1],s[0],y[42]);
 mux48_1 m44(0   ,0   ,0   ,0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[16],a[17],a[18],a[19],a[20],a[21],a[22],a[23],0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,s[5],s[4],s[3],s[2],s[1],s[0],y[43]);
 mux48_1 m45(0   ,0   ,0   ,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[16],a[17],a[18],a[19],a[20],a[21],a[22],a[23],0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,s[5],s[4],s[3],s[2],s[1],s[0],y[44]);
 mux48_1 m46(0   ,0   ,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[16],a[17],a[18],a[19],a[20],a[21],a[22],a[23],0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,s[5],s[4],s[3],s[2],s[1],s[0],y[45]);
 mux48_1 m47(0   ,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[16],a[17],a[18],a[19],a[20],a[21],a[22],a[23],0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,s[5],s[4],s[3],s[2],s[1],s[0],y[46]);
 mux48_1 m48(a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[16],a[17],a[18],a[19],a[20],a[21],a[22],a[23],0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,s[5],s[4],s[3],s[2],s[1],s[0],y[47]);

endmodule

// module cong 48 bit

module Cong48(a,b,s,cout);
input [47:0] a,b;
output cout;
output [47:0] s;
wire [47:0]c;
FA fa1(a[0],b[0],0,s[0],c[0]);
FA fa2(a[1],b[1],c[0],s[1],c[1]);
FA fa3(a[2],b[2],c[1],s[2],c[2]);
FA fa4(a[3],b[3],c[2],s[3],c[3]);
FA fa5(a[4],b[4],c[3],s[4],c[4]);
FA fa6(a[5],b[5],c[4],s[5],c[5]);
FA fa7(a[6],b[6],c[5],s[6],c[6]);
FA fa8(a[7],b[7],c[6],s[7],c[7]);
FA fa9(a[8],b[8],c[7],s[8],c[8]);
FA fa10(a[9],b[9],c[8],s[9],c[9]);
FA fa11(a[10],b[10],c[9],s[10],c[10]);
FA fa12(a[11],b[11],c[10],s[11],c[11]);
FA fa13(a[12],b[12],c[11],s[12],c[12]);
FA fa14(a[13],b[13],c[12],s[13],c[13]);
FA fa15(a[14],b[14],c[13],s[14],c[14]);
FA fa16(a[15],b[15],c[14],s[15],c[15]);
FA fa17(a[16],b[16],c[15],s[16],c[16]);
FA fa18(a[17],b[17],c[16],s[17],c[17]);
FA fa19(a[18],b[18],c[17],s[18],c[18]);
FA fa20(a[19],b[19],c[18],s[19],c[19]);
FA fa21(a[20],b[20],c[19],s[20],c[20]);
FA fa22(a[21],b[21],c[20],s[21],c[21]);
FA fa23(a[22],b[22],c[21],s[22],c[22]);
FA fa24(a[23],b[23],c[22],s[23],c[23]);
FA fa25(a[24],b[24],c[23],s[24],c[24]);
FA fa26(a[25],b[25],c[24],s[25],c[25]);
FA fa27(a[26],b[26],c[25],s[26],c[26]);
FA fa28(a[27],b[27],c[26],s[27],c[27]);
FA fa29(a[28],b[28],c[27],s[28],c[28]);
FA fa30(a[29],b[29],c[28],s[29],c[29]);
FA fa31(a[30],b[30],c[29],s[30],c[30]);
FA fa32(a[31],b[31],c[30],s[31],c[31]);
FA fa33(a[32],b[32],c[31],s[32],c[32]);
FA fa34(a[33],b[33],c[32],s[33],c[33]);
FA fa35(a[34],b[34],c[33],s[34],c[34]);
FA fa36(a[35],b[35],c[34],s[35],c[35]);
FA fa37(a[36],b[36],c[35],s[36],c[36]);
FA fa38(a[37],b[37],c[36],s[37],c[37]);
FA fa39(a[38],b[38],c[37],s[38],c[38]);
FA fa40(a[39],b[39],c[38],s[39],c[39]);
FA fa41(a[40],b[40],c[39],s[40],c[40]);
FA fa42(a[41],b[41],c[40],s[41],c[41]);
FA fa43(a[42],b[42],c[41],s[42],c[42]);
FA fa44(a[43],b[43],c[42],s[43],c[43]);
FA fa45(a[44],b[44],c[43],s[44],c[44]);
FA fa46(a[45],b[45],c[44],s[45],c[45]);
FA fa47(a[46],b[46],c[45],s[46],c[46]);
FA fa48(a[47],b[47],c[46],s[47],cout);

endmodule

//module A nhan B

module ANhanBb(a,b,y);
input [23:0] a,b;
output [47:0] y;
wire [47:0] t0,t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12,t13,t14,t15,t16,t17,t18,t19,t20,t21,t22,t23,t24;
wire [47:0] u0,u1,u2,u3,u4,u5,u6,u7,u8,u9,u10,u11,u12,u13,u14,u15,u16,u17,u18,u19,u20,u21,u22,u23,u24;
wire [47:0] s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22;
dichtrai48 pn1(a[23:0],6'b0,t0[47:0]);   mux48b mm1(48'b0,t0[47:0],b[0],u0[47:0]);
dichtrai48 pn2(a[23:0],6'b1,t1[47:0]);   mux48b mm2(48'b0,t1[47:0],b[1],u1[47:0]);
Cong48 con(u0[47:0],u1[47:0],s1[47:0],);

dichtrai48 p0 (a[23:0],6'd2 ,t2 [47:0]);      mux48b m0(48'b0,t2[47:0],b[2],u2[47:0]);       Cong48 co0(s1[47:0],u2[47:0],s2[47:0],);
dichtrai48 b1 (a[23:0],6'd3 ,t3 [47:0]);      mux48b m1(48'b0,t3[47:0],b[3],u3[47:0]);       Cong48 co1(s2[47:0],u3[47:0],s3[47:0],);
dichtrai48 b2 (a[23:0],6'd4 ,t4 [47:0]);      mux48b m2(48'b0,t4[47:0],b[4],u4[47:0]);       Cong48 co2(s3[47:0],u4[47:0],s4[47:0],);
dichtrai48 b3 (a[23:0],6'd5 ,t5 [47:0]);      mux48b m3(48'b0,t5[47:0],b[5],u5[47:0]);       Cong48 co3(s4[47:0],u5[47:0],s5[47:0],);
dichtrai48 b4 (a[23:0],6'd6 ,t6 [47:0]);      mux48b m4(48'b0,t6[47:0],b[6],u6[47:0]);       Cong48 co4(s5[47:0],u6[47:0],s6[47:0],);
dichtrai48 p5 (a[23:0],6'd7 ,t7 [47:0]);      mux48b m5(48'b0,t7[47:0],b[7],u7[47:0]);       Cong48 co5(s6[47:0],u7[47:0],s7[47:0],);
dichtrai48 p6 (a[23:0],6'd8 ,t8 [47:0]);      mux48b m6(48'b0,t8[47:0],b[8],u8[47:0]);       Cong48 co6(s7[47:0],u8[47:0],s8[47:0],);
dichtrai48 p7 (a[23:0],6'd9 ,t9 [47:0]);      mux48b m7(48'b0,t9[47:0],b[9],u9[47:0]);       Cong48 co7(s8[47:0],u9[47:0],s9[47:0],);
dichtrai48 p8 (a[23:0],6'd10,t10[47:0]);   	  mux48b m8(48'b0,t10[47:0],b[10],u10[47:0]);    Cong48 co8(s9[47:0],u10[47:0],s10[47:0],);
dichtrai48 p9 (a[23:0],6'd11,t11[47:0]);   	  mux48b m9(48'b0,t11[47:0],b[11],u11[47:0]);    Cong48 co9(s10[47:0],u11[47:0],s11[47:0],);
dichtrai48 p10(a[23:0],6'd12,t12[47:0]);   	  mux48b m10(48'b0,t12[47:0],b[12],u12[47:0]);   Cong48 co10(s11[47:0],u12[47:0],s12[47:0],);
dichtrai48 p11(a[23:0],6'd13,t13[47:0]);   	  mux48b m11(48'b0,t13[47:0],b[13],u13[47:0]);   Cong48 co11(s12[47:0],u13[47:0],s13[47:0],);
dichtrai48 p12(a[23:0],6'd14,t14[47:0]);   	  mux48b m12(48'b0,t14[47:0],b[14],u14[47:0]);   Cong48 co12(s13[47:0],u14[47:0],s14[47:0],);
dichtrai48 p13(a[23:0],6'd15,t15[47:0]);   	  mux48b m13(48'b0,t15[47:0],b[15],u15[47:0]);   Cong48 co13(s14[47:0],u15[47:0],s15[47:0],);
dichtrai48 p14(a[23:0],6'd16,t16[47:0]);   	  mux48b m14(48'b0,t16[47:0],b[16],u16[47:0]);   Cong48 co14(s15[47:0],u16[47:0],s16[47:0],);
dichtrai48 p15(a[23:0],6'd17,t17[47:0]);   	  mux48b m15(48'b0,t17[47:0],b[17],u17[47:0]);   Cong48 co15(s16[47:0],u17[47:0],s17[47:0],);
dichtrai48 p16(a[23:0],6'd18,t18[47:0]);   	  mux48b m16(48'b0,t18[47:0],b[18],u18[47:0]);   Cong48 co16(s17[47:0],u18[47:0],s18[47:0],);
dichtrai48 p17(a[23:0],6'd19,t19[47:0]);   	  mux48b m17(48'b0,t19[47:0],b[19],u19[47:0]);   Cong48 co17(s18[47:0],u19[47:0],s19[47:0],);
dichtrai48 p18(a[23:0],6'd20,t20[47:0]);   	  mux48b m18(48'b0,t20[47:0],b[20],u20[47:0]);   Cong48 co18(s19[47:0],u20[47:0],s20[47:0],);
dichtrai48 p19(a[23:0],6'd21,t21[47:0]);   	  mux48b m19(48'b0,t21[47:0],b[21],u21[47:0]);   Cong48 co19(s20[47:0],u21[47:0],s21[47:0],);
dichtrai48 p20(a[23:0],6'd22,t22[47:0]);   	  mux48b m20(48'b0,t22[47:0],b[22],u22[47:0]);   Cong48 co20(s21[47:0],u22[47:0],s22[47:0],);
dichtrai48 p21(a[23:0],6'd23,t23[47:0]);   	  mux48b m21(48'b0,t23[47:0],b[23],u23[47:0]);   Cong48 co21(s22[47:0],u23[47:0],y[47:0],);

endmodule

//module A nhan B hoan thanh

module ANhanB_Final(a,b,s);
input [31:0] a,b;
output [31:0] s;
wire dau,dautich,ct;
wire [7:0] exS,exS1,exS3,exS4;
wire [8:0] exS2;
wire [23:0] ta,tb;
wire [47:0] ts;
assign ta={1'b1,a[22:0]};
assign tb={1'b1,b[22:0]};
Tru8 tr1(a[30:23],8'b01111111,exS1[7:0],dau);
bu2_8b bu3(exS1[7:0],exS2[8:0]);
Cong8 co1(exS1[7:0],b[30:23],exS3[7:0],);
Tru8 co2(b[30:23],exS2[7:0],exS4[7:0],);
mux8b mu4(exS3[7:0],exS4[7:0],dau,exS[7:0]);

ANhanB an1(ta[23:0],tb[23:0],ts[47:0]);
xor(dautich,a[31],b[31]);
assign s={dautich,exS[7:0],ts[45:23]};
endmodule

//module bo nhan

module Bo_Nhan(a,b,s);
input [31:0]a,b;
output [31:0]s;
wire [31:0]ANhanB,Inf,NaN,zero,Truinf,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,u1,u2;
wire infA,nanA,zeroA,infB,nanB,zeroB;

assign Inf =32'b0_11111111_00000000000000000000000;
assign NaN =32'b0_11111111_11111111111111111111111;
assign zero=32'b0_00000000_00000000000000000000000;
assign Truinf =32'b1_11111111_00000000000000000000000;

ANhanB_Final an2(a[31:0],b[31:0],ANhanB[31:0]);
Dacbiet da2(a[31:0],infA,nanA,zeroA);
Dacbiet da3(b[31:0],infB,nanB,zeroB);

mux32b mu0(ANhanB[31:0],zero[31:0],zeroB,o1[31:0]);
mux32b mun(Inf[31:0],Truinf[31:0],a[31],u1[31:0]);
mux32b mu1(o1[31:0],u1[31:0],infB,o2[31:0]);
mux32b mu2(o2[31:0],NaN[31:0],nanB,o3[31:0]);
mux32b mu3(Inf[31:0],Truinf[31:0],b[31],u2[31:0]);
mux32b muc(u2[31:0],NaN[31:0],zeroB,o4[31:0]);
mux32b mu4(o4[31:0],Inf[31:0],infB,o5[31:0]);
mux32b mu5(o5[31:0],NaN[31:0],nanB,o6[31:0]);
mux32b mu6(zero[31:0],NaN[31:0],infB,o7[31:0]);
mux32b mu7(o7[31:0],NaN[31:0],nanB,o8[31:0]);
mux32b mu8(o3[31:0],o6[31:0],infA,o9[31:0]);
mux32b mu9(o9[31:0],o8[31:0],zeroA,o10[31:0]);
mux32b muv(o10[31:0],NaN[31:0],nanA,s[31:0]);
endmodule

//module shift trai 1 bit

module dichtrai1(a,y);
input [23:0] a;
output [24:0] y;
assign y={a[23:0],1'b0};
endmodule

//module A chia B

module AChiaB(a,b,s);
input [23:0] a,b;
output [24:0] s;
wire t0,t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12,t13,t14,t15,t16,t17,t18,t19,t20,t21,t22,t23,tt;
wire [23:0] v0,v1,o0,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,o11,o12,o13,o14,o15,o16,o17,o18,o19,o20,o21,o22,o23,o24,o25,o26,o27,o28,o29,o30,o31,o32,o33,o34,o35,o36,o37,o38,o39,o40,o41,o42,o43,o44,o45,o46,o47,o48,o49,o50,o51,o52,o53,o54,o55,o56,o57,o58,o59,o60,o61,o62,o63,o64,o65,o66,o67,o68,o69,o70,o71;
wire [24:0] u0,u1,u2,u3,u4,u5,u6,u7,u8,u9,u10,u11,u12,u13,u14,u15,u16,u17,u18,u19,u20,u21,u22,u23;

Tru24 rt1( a  [23:0],b[23:0],v0 [23:0],tt);  mux muy1 (1,0,tt ,s[24]);  mux24b mxb (v0 [23:0],a [23:0],tt ,v1 [23:0]);
dichtrai1 dr1 (v1 [23:0],u0 [24:0]); Tru25 tr1 (u0 [24:0],b[23:0],o1 [23:0],t0);  mux mu1 (1,0,t0 ,s[23]); mux24b mx1 (o1 [23:0],u0 [23:0],t0 ,o2 [23:0]);
dichtrai1 dr2 (o2 [23:0],u1 [24:0]); Tru25 tr2 (u1 [24:0],b[23:0],o3 [23:0],t1);  mux mu2 (1,0,t1 ,s[22]); mux24b mx2 (o3 [23:0],u1 [23:0],t1 ,o4 [23:0]);
dichtrai1 dr3 (o4 [23:0],u2 [24:0]); Tru25 tr3 (u2 [24:0],b[23:0],o5 [23:0],t2);  mux mu3 (1,0,t2 ,s[21]); mux24b mx3 (o5 [23:0],u2 [23:0],t2 ,o6 [23:0]);
dichtrai1 dr4 (o6 [23:0],u3 [24:0]); Tru25 tr4 (u3 [24:0],b[23:0],o7 [23:0],t3);  mux mu4 (1,0,t3 ,s[20]); mux24b mx4 (o7 [23:0],u3 [23:0],t3 ,o8 [23:0]);
dichtrai1 dr5 (o8 [23:0],u4 [24:0]); Tru25 tr5 (u4 [24:0],b[23:0],o9 [23:0],t4);  mux mu5 (1,0,t4 ,s[19]); mux24b mx5 (o9 [23:0],u4 [23:0],t4 ,o10[23:0]);
dichtrai1 dr6 (o10[23:0],u5 [24:0]); Tru25 tr6 (u5 [24:0],b[23:0],o11[23:0],t5);  mux mu6 (1,0,t5 ,s[18]); mux24b mx6 (o11[23:0],u5 [23:0],t5 ,o12[23:0]);
dichtrai1 dr7 (o12[23:0],u6 [24:0]); Tru25 tr7 (u6 [24:0],b[23:0],o13[23:0],t6);  mux mu7 (1,0,t6 ,s[17]); mux24b mx7 (o13[23:0],u6 [23:0],t6 ,o14[23:0]);
dichtrai1 dr8 (o14[23:0],u7 [24:0]); Tru25 tr8 (u7 [24:0],b[23:0],o15[23:0],t7);  mux mu8 (1,0,t7 ,s[16]); mux24b mx8 (o15[23:0],u7 [23:0],t7 ,o16[23:0]);
dichtrai1 dr9 (o16[23:0],u8 [24:0]); Tru25 tr9 (u8 [24:0],b[23:0],o17[23:0],t8);  mux mu9 (1,0,t8 ,s[15]); mux24b mx9 (o17[23:0],u8 [23:0],t8 ,o18[23:0]);
dichtrai1 dr10(o18[23:0],u9 [24:0]); Tru25 tr10(u9 [24:0],b[23:0],o19[23:0],t9);  mux mu10(1,0,t9 ,s[14]); mux24b mx10(o19[23:0],u9 [23:0],t9 ,o20[23:0]);
dichtrai1 dr11(o20[23:0],u10[24:0]); Tru25 tr11(u10[24:0],b[23:0],o21[23:0],t10); mux mu11(1,0,t10,s[13]); mux24b mx11(o21[23:0],u10[23:0],t10,o22[23:0]);
dichtrai1 dr12(o22[23:0],u11[24:0]); Tru25 tr12(u11[24:0],b[23:0],o23[23:0],t11); mux mu12(1,0,t11,s[12]); mux24b mx12(o23[23:0],u11[23:0],t11,o24[23:0]);
dichtrai1 dr13(o24[23:0],u12[24:0]); Tru25 tr13(u12[24:0],b[23:0],o25[23:0],t12); mux mu13(1,0,t12,s[11]); mux24b mx13(o25[23:0],u12[23:0],t12,o26[23:0]);
dichtrai1 dr14(o26[23:0],u13[24:0]); Tru25 tr14(u13[24:0],b[23:0],o27[23:0],t13); mux mu14(1,0,t13,s[10]); mux24b mx14(o27[23:0],u13[23:0],t13,o28[23:0]);
dichtrai1 dr15(o28[23:0],u14[24:0]); Tru25 tr15(u14[24:0],b[23:0],o29[23:0],t14); mux mu15(1,0,t14,s[9]);  mux24b mx15(o29[23:0],u14[23:0],t14,o30[23:0]);
dichtrai1 dr16(o30[23:0],u15[24:0]); Tru25 tr16(u15[24:0],b[23:0],o31[23:0],t15); mux mu16(1,0,t15,s[8]);  mux24b mx16(o31[23:0],u15[23:0],t15,o32[23:0]);
dichtrai1 dr17(o32[23:0],u16[24:0]); Tru25 tr17(u16[24:0],b[23:0],o33[23:0],t16); mux mu17(1,0,t16,s[7]);  mux24b mx17(o33[23:0],u16[23:0],t16,o34[23:0]);
dichtrai1 dr18(o34[23:0],u17[24:0]); Tru25 tr18(u17[24:0],b[23:0],o35[23:0],t17); mux mu18(1,0,t17,s[6]);  mux24b mx18(o35[23:0],u17[23:0],t17,o36[23:0]);
dichtrai1 dr19(o36[23:0],u18[24:0]); Tru25 tr19(u18[24:0],b[23:0],o37[23:0],t18); mux mu19(1,0,t18,s[5]);  mux24b mx19(o37[23:0],u18[23:0],t18,o38[23:0]);
dichtrai1 dr20(o38[23:0],u19[24:0]); Tru25 tr20(u19[24:0],b[23:0],o39[23:0],t19); mux mu20(1,0,t19,s[4]);  mux24b mx20(o39[23:0],u19[23:0],t19,o40[23:0]);
dichtrai1 dr21(o40[23:0],u20[24:0]); Tru25 tr21(u20[24:0],b[23:0],o41[23:0],t20); mux mu21(1,0,t20,s[3]);  mux24b mx21(o41[23:0],u20[23:0],t20,o42[23:0]);
dichtrai1 dr22(o42[23:0],u21[24:0]); Tru25 tr22(u21[24:0],b[23:0],o43[23:0],t21); mux mu22(1,0,t21,s[2]);  mux24b mx22(o43[23:0],u21[23:0],t21,o44[23:0]);
dichtrai1 dr23(o44[23:0],u22[24:0]); Tru25 tr23(u22[24:0],b[23:0],o45[23:0],t22); mux mu23(1,0,t22,s[1]);  mux24b mx23(o45[23:0],u22[23:0],t22,o46[23:0]);
dichtrai1 dr24(o46[23:0],u23[24:0]); Tru25 tr24(u23[24:0],b[23:0],o47[23:0],t23); mux mu24(1,0,t23,s[0]);  mux24b mx24(o47[23:0],u23[23:0],t23,o48[23:0]);
endmodule

//module A chia B hoan thanh 

module AChiaB_Final(a,b,s);
input [31:0] a,b;
output [31:0] s;
wire dau,dauthuong;
wire [4:0] tab;
wire [7:0] ex1,exS1,exS2,exS3,exS4,exS;
wire [8:0] ex2;
wire [23:0] tachiab,ta,tb;
wire [24:0] achiab;

assign ta={1'b1,a[22:0]};
assign tb={1'b1,b[22:0]};

Tru8 tr1(b[30:23],8'b01111111,ex1[7:0],dau);
bu2_8b bu1(ex1[7:0],ex2[8:0]);
Tru8 tr2(a[30:23],ex1[7:0],exS1[7:0],);
Cong8 co1(a[30:23],ex2[7:0],exS2[7:0],);
mux8b mu2(exS1[7:0],exS2[7:0],dau,exS3[7:0]);
Tru8 tr5(exS3[7:0],8'b1,exS4[7:0],);

AChiaB ac1(ta[23:0],tb[23:0],achiab[24:0]);
mux8b mx5(exS4[7:0],exS3[7:0],achiab[24],exS[7:0]);
mux23b mx9(achiab[22:0],achiab[23:1],achiab[24],tachiab[22:0]);
xor (dauthuong,a[31],b[31]);

assign s={dauthuong,exS[7:0],tachiab[22:0]};
endmodule

//module bo chia

module Bo_Chia(a,b,s);
input [31:0] a,b;
output [31:0] s;
wire [31:0]AChiaB,Inf,NaN,zero,Truinf,Truzero,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,o11,u1,u2;
wire infA,nanA,zeroA,infB,nanB,zeroB;

assign Inf =   32'b0_11111111_00000000000000000000000;
assign NaN =   32'b0_11111111_11111111111111111111111;
assign zero=   32'b0_00000000_00000000000000000000000;
assign Truinf =32'b1_11111111_00000000000000000000000;
assign Truzero=32'b1_00000000_00000000000000000000000;

AChiaB_Final ac2(a[31:0],b[31:0],AChiaB[31:0]);
Dacbiet da2(a[31:0],infA,nanA,zeroA);
Dacbiet da3(b[31:0],infB,nanB,zeroB);

mux32b mu0(AChiaB[31:0],NaN[31:0],zeroB,o1[31:0]);
mux32b mur(zero[31:0],Truzero[31:0],a[31],u1[31:0]);
mux32b mu1(o1[31:0],u1[31:0],infB,o2[31:0]);
mux32b mu2(o2[31:0],NaN[31:0],nanB,o3[31:0]);
mux32b mu3(Inf[31:0],Truinf[31:0],b[31],u2[31:0]);
mux32b mut(u2[31:0],NaN[31:0],zeroB,o4[31:0]);
mux32b mu4(o4[31:0],NaN[31:0],infB,o5[31:0]);
mux32b mug(o5[31:0],NaN[31:0],nanB,o6[31:0]);
mux32b mu5(zero[31:0],NaN[31:0],zeroB,o7[31:0]);
mux32b mu6(o7[31:0],zero[31:0],infB,o8[31:0]);
mux32b mu7(o8[31:0],NaN[31:0],nanB,o9[31:0]);
mux32b mu8(o3[31:0],o6[31:0],infA,o10[31:0]);
mux32b mu9(o10[31:0],o9[31:0],zeroA,o11[31:0]);
mux32b mu10(o11[31:0],NaN[31:0],nanA,s[31:0]);
endmodule

//module ALU

module FPN(A,B,sel,S);
input [31:0] A,B;
input [1:0]sel;
output [31:0] S;
wire [31:0] s0,s1,s2,s3,st1,st2;
Bo_Cong bo1(A,B,s0);
Bo_Tru  tr1(A,B,s1);
Bo_Nhan an2(A,B,s2);
Bo_Chia ch2(A,B,s3);
mux32b mu0(s0,s2,sel[1],st1);
mux32b mu1(s1,s3,sel[1],st2);
mux32b mu2(st1,st2,sel[0],S);
endmodule
