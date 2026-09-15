module Mux4to1(
    input logic [3:0] I,
    input logic [1:0] Sel,
    output logic Y
);

// Bitwise AND operations: select I[3] when Sel is 2'b11.
assign Y = (I[3] & Sel[1] & Sel[0])
         // Bitwise NOT on Sel[0], then bitwise AND with I[2] and Sel[1].
         + (I[2] & Sel[1] & ~Sel[0])
         // Bitwise NOT on Sel[1], then bitwise AND with I[1] and Sel[0].
         + (I[1] & ~Sel[1] & Sel[0])
         // Bitwise NOT on Sel[1] and Sel[0], then bitwise AND with I[0].
         + (I[0] & ~Sel[1] & ~Sel[0]);

// The + operators combine the selected minterms using arithmetic addition.
endmodule