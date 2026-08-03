`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.07.2026 01:46:24
// Design Name: 
// Module Name: rca_tb
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

module tb_alu_rca;

// Inputs
reg [7:0] A;
reg [7:0] B;
reg [2:0] Sel;

// Outputs
wire [7:0] Result;
wire Carry;
alu_rca DUT (
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
    #10;

    Sel = 3'b001;   
    #10;

    Sel = 3'b010;   
    #10;

    Sel = 3'b011;   
    #10;

    Sel = 3'b100;  
    #10;

    Sel = 3'b101;   
    #10;

    Sel = 3'b110;   
    #10;

    Sel = 3'b111;   
    #10;

   
    A = 8'd100;
    B = 8'd50;

    Sel = 3'b000;   
    #10;

    Sel = 3'b001;   
    #10;

    
    A = 8'd255;
    B = 8'd1;

    Sel = 3'b000;
    #10;

    
    A = 8'd25;
    B = 8'd25;

    Sel = 3'b001;
    #10;

    
    A = 8'b10101010;
    B = 8'b01010101;

    Sel = 3'b010; 
    #10;

    Sel = 3'b011;   
    #10;

    Sel = 3'b100;   
    
        #10;

    $finish;

end

endmodule
