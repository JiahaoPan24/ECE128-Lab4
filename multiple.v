`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/24 13:56:05
// Design Name: 
// Module Name: multiple
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module multiple(
    input [4:0] i,
    output [4:0] L
);

wire an,bn,cn,dn,en,den;
wire Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7,Y8,Y9,Y10;
wire S0,S1,S2,S3,S4,S5,S6,S7,S8;

not N1(en,i[0]);
not N2(dn,i[1]);
not N3(cn,i[2]);
not N4(bn,i[3]);
not N5(an,i[4]);

and A0(Y0,an,bn,cn,dn,en);
and A1(Y1,an,bn,cn,i[1],i[0]);
and A2(Y2,an,bn,i[2],i[1],en);
and A3(Y3,an,i[3],cn,dn,i[0]);
and A4(Y4,an,i[3],i[2],dn,en);
and A5(Y5,an,i[3],i[2],i[1],i[0]);
and A6(Y6,i[4],bn,cn,i[1],en);
and A7(Y7,i[4],bn,i[2],dn,i[0]);
and A8(Y8,i[4],i[3],cn,dn,en);
and A9(Y9,i[4],i[3],cn,i[1],i[0]);
and A10(Y10,i[4],i[3],i[2],i[1],en);

and A11(den,dn,en);

and A00(S0,an,bn,cn,dn,en);
and A12(S1,an,bn,i[2],dn,i[0]);
and A13(S2,an,i[3],cn,i[1],en);
and A14(S3,an,i[3],i[2],i[1],i[0]);
and A15(S4,i[4],bn,i[2],dn,en);
and A16(S5,i[4],i[3],cn,dn,i[0]);
and A17(S6,i[4],i[3],i[2],i[1],en);

or A18(S7,Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7,Y8,Y9,Y10);
or A19(S8,S0,S1,S2,S3,S4,S5,S6);

and O0(L[4],en,S8,S7);
or O1(L[0],en);
or O2(L[2],den);
or O3(L[1],S7);
or O4(L[3],S8);


endmodule
