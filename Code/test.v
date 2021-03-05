module one_st(
output logic[7:0]sfr,
input logic[24:0]a
);

logic [5:0]tmp1,tmp2,tmp3,tmp4,tmp5,tmp6,tmp7,tmp8,tmp9,
tmp10,tmp11,tmp12,tmp13,tmp14,tmp15,
tmp16,tmp17,tmp18,tmp19,tmp20,tmp21,tmp22,tmp23,tmp24,tmp25;


mux21n #(6) M0	(tmp1,  a[0] ,6'b111111,6'b101000);
mux21n #(6) M1	(tmp2,  a[1] ,tmp1 ,6'b101001);
mux21n #(6) M2	(tmp3,  a[2] ,tmp2 ,6'b101010);
mux21n #(6) M3	(tmp4,  a[3] ,tmp3 ,6'b101011);
mux21n #(6) M4	(tmp5,  a[4] ,tmp4 ,6'b101100);
mux21n #(6) M5	(tmp6,  a[5] ,tmp5 ,6'b101101);
mux21n #(6) M6	(tmp7,  a[6] ,tmp6 ,6'b101110);
mux21n #(6) M7	(tmp8,  a[7] ,tmp7 ,6'b101111);
mux21n #(6) M8	(tmp9,  a[8] ,tmp8 ,6'b110000);
mux21n #(6) M9	(tmp10, a[9] ,tmp9 ,6'b110001);
mux21n #(6) M10 (tmp11, a[10],tmp10,6'b110010);
mux21n #(6) M11 (tmp12, a[11],tmp11,6'b110011);
mux21n #(6) M12 (tmp13, a[12],tmp12,6'b110100);
mux21n #(6) M13 (tmp14, a[13],tmp13,6'b110101);
mux21n #(6) M14 (tmp15, a[14],tmp14,6'b110110);
mux21n #(6) M15 (tmp16, a[15],tmp15,6'b110111);
mux21n #(6) M16 (tmp17, a[16],tmp16,6'b111000);
mux21n #(6) M17 (tmp18, a[17],tmp17,6'b111001);
mux21n #(6) M18 (tmp19, a[18],tmp18,6'b111010);
mux21n #(6) M19 (tmp20, a[19],tmp19,6'b111011);
mux21n #(6) M20 (tmp21, a[20],tmp20,6'b111100);
mux21n #(6) M21 (tmp22, a[21],tmp21,6'b111101);
mux21n #(6) M22 (tmp23, a[22],tmp22,6'b111110);
mux21n #(6) M23 (tmp24, a[23],tmp23,6'b000000);
mux21n #(6) M24 (tmp25, a[24],tmp24,6'b000001);
assign sfr={{2{tmp25[5]}},tmp25};


endmodule

