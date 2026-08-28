`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.07.2026 01:55:16
// Design Name: 
// Module Name: alu8_cla
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


module alu8_cla(
    input [7:0] A,
    input [7:0] B,
    input [2:0] Sel,
    output reg [7:0] Result,
    output Carry
);

wire [7:0] AddOut;
wire AddCarry;

wire [7:0] SubOut;
wire SubCarry;

cla8 ADDER(
    .A(A),
    .B(B),
    .Cin(1'b0),
    .Sum(AddOut),
    .Cout(AddCarry)
);

cla8 SUBTRACTOR(
    .A(A),
    .B(~B),
    .Cin(1'b1),
    .Sum(SubOut),
    .Cout(SubCarry)
);

assign Carry = (Sel == 3'b000) ? AddCarry :
               (Sel == 3'b001) ? SubCarry :
               1'b0;
always @(*) begin
    case(Sel)
3'b000: Result = AddOut;
3'b001: Result = SubOut;
3'b010: Result = A & B;
3'b011: Result = A | B;
3'b100: Result = A ^ B;
3'b101: Result = ~A;
3'b110: Result = A << 1;
3'b111: Result = A >> 1;
 default: Result = 8'b0;
   endcase

end

endmodule
