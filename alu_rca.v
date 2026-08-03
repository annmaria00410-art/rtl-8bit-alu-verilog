`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.07.2026 01:18:14
// Design Name: 
// Module Name: alu_rca
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


module alu_rca(
input [7:0] A,
input [7:0] B,
input [2:0] Sel,
output reg [7:0] Result,
output Carry
);

wire [7:0] Add_Out;
wire [7:0] Sub_Out;
wire Carry_Add;
wire Carry_Sub;

rca_8 ADD(A,B,1'b0,Add_Out,Carry_Add);

rca_8 SUB(A,~B,1'b1,Sub_Out,Carry_Sub);

assign Carry = (Sel==3'b000)?Carry_Add:
               (Sel==3'b001)?Carry_Sub:0;

always @(*)
begin
case(Sel)

3'b000: Result = Add_Out;

3'b001: Result = Sub_Out;

3'b010: Result = A & B;

3'b011: Result = A | B;

3'b100: Result = A ^ B;

3'b101: Result = ~A;

3'b110: Result = A << 1;

3'b111: Result = A >> 1;

endcase
end

endmodule