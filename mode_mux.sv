`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2016 03:59:28 PM
// Design Name: 
// Module Name: mode_mux
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


module mode_mux(
    input arith_result_mux,
    input arith_Cout_mux,
    input logic_result_mux,
    input logic_Cout_mux,
    input mode_mux,
    output result_final,
    output Cout_final
    );
    
    mux2to1 OneLevel1(
        .A(arith_result),
        .B(logic_result),
        .sel(mode),
        .Y(result_final)
    );
    
    mux2to1 TwoLevel1(
        .A(arith_Cout),
        .B(logic_Cout),
        .sel(mode),
        .Y(Cout_final)
    );
    
endmodule
