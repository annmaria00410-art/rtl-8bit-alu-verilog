`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.07.2026 22:26:01
// Design Name: 
// Module Name: rca_8
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


module rca_8(
    input  [7:0] a_rca,
    input  [7:0] b_rca,
    input        cin,
    output [7:0] sum_rca,
    output       cout_rca
);

wire w1, w2, w3, w4, w5, w6, w7;
full_adder fa1(.a(a_rca[0]), .b(b_rca[0]),.cin(cin),.sum(sum_rca[0]),.carry(w1));
full_adder fa2(.a(a_rca[1]),.b(b_rca[1]),.cin(w1),.sum(sum_rca[1]),.carry(w2));
full_adder fa3(.a(a_rca[2]),.b(b_rca[2]),.cin(w2),.sum(sum_rca[2]),.carry(w3));
full_adder fa4(.a(a_rca[3]), .b(b_rca[3]), .cin(w3), .sum(sum_rca[3]), .carry(w4));
full_adder fa5(.a(a_rca[4]),.b(b_rca[4]),.cin(w4),.sum(sum_rca[4]),.carry(w5));
full_adder fa6(.a(a_rca[5]),  .b(b_rca[5]),.cin(w5),.sum(sum_rca[5]),.carry(w6));
full_adder fa7( .a(a_rca[6]), .b(b_rca[6]), .cin(w6), .sum(sum_rca[6]), .carry(w7));
full_adder fa8( .a(a_rca[7]), .b(b_rca[7]), .cin(w7), .sum(sum_rca[7]), .carry(cout_rca));

endmodule
