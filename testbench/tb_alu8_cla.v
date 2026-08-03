`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.07.2026 01:56:36
// Design Name: 
// Module Name: tb_alu8_cla
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


`timescale 1ns/1ps

module tb_alu8_cla;

reg [7:0] A;
reg [7:0] B;
reg [2:0] Sel;

wire [7:0] Result;
wire Carry;

alu8_cla DUT(
    .A(A),
    .B(B),
    .Sel(Sel),
    .Result(Result),
    .Carry(Carry)
);

initial begin


$display("Time\tSel\tA\tB\tResult\tCarry");

$monitor("%0t\t%b\t%d\t%d\t%d\t%b",
          $time, Sel, A, B, Result, Carry);

A = 8'd15;
B = 8'd10;

Sel = 3'b000;
#50;

Sel = 3'b001;
#50;

Sel = 3'b010;
#50;

Sel = 3'b011;
#50;

Sel = 3'b100;
#50;

Sel = 3'b101;
#50;

Sel = 3'b110;
#50;

Sel = 3'b111;
#50;

A = 8'd100;
B = 8'd200;

Sel = 3'b000;
#50;

Sel = 3'b001;
#50;

A = 8'd255;
B = 8'd1;

Sel = 3'b000;
#50;

$finish;

end

endmodule
