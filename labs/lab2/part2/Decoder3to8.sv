`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/16/2025 12:02:30 PM
// Design Name: 
// Module Name: Decoder3to8
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


module Decoder3to8(
    input logic [2:0] A,
    input logic enable,
    output logic [7:0] Y
    );
    
    assign Y[0] = enable & (~A[2] & ~A[1] & ~A[0]);
    assign Y[1] = enable & (~A[2] & ~A[1] & A[0]);
    assign Y[2] = enable & (~A[2] & A[1]  & ~A[0]);
    assign Y[3] = enable & (~A[2] & A[1]  & A[0]);
    assign Y[4] = enable & (A[2]  & ~A[1] & ~A[0]);
    assign Y[5] = enable & (A[2]  & A[1] & A[0]);
    assign Y[6] = enable & (A[2]  & A[1]  & ~A[0]);
    assign Y[7] = enable & (A[2]  & A[1]  & A[0]);
endmodule
