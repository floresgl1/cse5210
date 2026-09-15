`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/16/2025 12:34:05 PM
// Design Name: 
// Module Name: tb_Decoder3to8
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


module tb_Decoder3to8;

// Testbench signals
    logic [2:0] A;
    logic enable;
    logic [7:0] Y;

    // Instantiate the Decoder
    Decoder3to8 uut (
        .A(A),
        .enable(enable),
        .Y(Y)
    );

    initial begin
        // Initialize signals
        A = 0;
        enable = 0;

        // Apply test sequence
        #20 enable = 1; 
        #10 A = 1;
        #10 A = 2;
        #10 A = 3;
        #10 A = 4;
        #10 A = 5;
        #10 A = 6;
        #10 A = 7;
        #10 enable = 0;

        // Finish simulation
        #10 $finish;
    end
endmodule
