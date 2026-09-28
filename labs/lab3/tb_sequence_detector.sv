`timescale 1ns / 1ps

module tb_sequence_detector;
    logic clk;
    logic reset;
    logic I;
    logic y;

    sequence_detector dut (
        .clk(clk),
        .reset(reset),
        .I(I),
        .y(y)
    );

    // 10 ns clock period: rising edges at 5, 15, 25, ... ns
    initial clk = 0;
    always #5 clk = ~clk;

    // Inputs change on falling edges so they are stable at each rising edge
    initial begin
        reset = 1;
        I = 0;
        #20;
        reset = 0;      // S0 -> S1 on the 0s at 25 and 35 ns
        #20;
        I = 1;          // 40 ns: "01"
        #10;
        I = 0;          // 50 ns: "010"
        #10;
        I = 1;          // 60 ns: "0101" -> y = 1 (65-75 ns); stays 1 until 80 ns
        #20;
        I = 0;          // 80 ns: second 0101 starts
        #10;
        I = 1;          // 90 ns
        #10;
        I = 0;          // 100 ns
        #10;
        I = 1;          // 110 ns: "0101" -> y = 1 (115-125 ns)
        #10;
        I = 0;          // 120 ns: S4 -> S1 (no overlap), so the next 1 must not set y
        #10;
        I = 1;          // 130 ns
        #40;
        I = 0;          // 170 ns
        #20;
        I = 1;          // 190 ns
        #30;
        $finish;
    end
endmodule
