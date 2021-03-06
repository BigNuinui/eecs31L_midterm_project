`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2016 04:51:36 PM
// Design Name: 
// Module Name: logic_unit
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


module logic_unit(
    input logic op1,
    input logic op2,
    input logic [2:0] opsel,
    input logic Cin_final,
    output logic logic_result,
    output logic logic_Cout
    );
    
    logic logic_net1;
    logic logic_net2;
    logic logic_net3;
    
    mux2to1 logic_OneLevel1(
        .A(op1 && op2),
        .B(op1 || op1),
        .sel(opsel[0]),
        .Y(logic_net1)
    );
    
    mux2to1 logic_TwoLevel1(
        .A(op1^op2),
        .B(~op1),
        .sel(opsel[0]),
        .Y(logic_net2)
    );
    
    mux2to1 logic_OneLevel2(
        .A(logic_net1),
        .B(logic_net2),
        .sel(opsel[1]),
        .Y(logic_net3)
    );
    
    mux2to1 logic_OneLevel3(
        .A(logic_net3),
        .B(Cin_final),
        .sel(opsel[2]),
        .Y(logic_result)
    );
    
    assign logic_Cout = (op1 && opsel[2]);
      
endmodule
