`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/18/2016 03:56:52 PM
// Design Name: 
// Module Name: midtermProject_tb
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


module midtermProject_tb;

logic A;
logic B;
logic [2:0]sel;
logic mode_tb;
logic result;
logic Cout;

midtermProject One_bit_ALU(
    .op1(A),
    .op2(B),
    .Cin_final(Cin),
    .opsel(sel),
    .mode(mode_tb),
    .result_final(result),
    .Cout_final(Cout)
);

endmodule
