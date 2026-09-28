`timescale 1ns / 1ps

// Moore FSM that detects the bit sequence 0101 on the serial input I.
// Implements the state diagram from the Lab 3 handout:
//   S0: nothing useful seen    S1: "0"    S2: "01"    S3: "010"    S4: "0101" (y = 1)
module sequence_detector (
    input  logic clk,      // Clock
    input  logic reset,    // Active-high synchronous reset
    input  logic I,        // 1-bit serial input
    output logic y         // 1-bit output
);

    // 5 states -> 3 bits
    typedef enum logic [2:0] {S0, S1, S2, S3, S4} state_t;

    state_t state, next_state;

    // Sequential block: state update (synchronous, active-high reset)
    always_ff @(posedge clk) begin
        if (reset)
            state <= S0;
        else
            state <= next_state;
    end

    // Combinational block: next state logic
    always_comb begin
        next_state = state;
        case (state)
            S0: next_state = I ? S0 : S1;
            S1: next_state = I ? S2 : S1;
            S2: next_state = I ? S0 : S3;
            S3: next_state = I ? S4 : S1;
            S4: next_state = I ? S0 : S1;
            default: next_state = S0;
        endcase
    end

    // Output logic: Moore output depends only on the current state
    assign y = (state == S4);

endmodule
