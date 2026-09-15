module tb_4to1Mux;
    reg [3:0] I;
    reg [1:0] Sel;
    wire Y;


    Mux4to1 mux(
        .I(I),
        .Sel(Sel),
        .Y(Y)
    );

    initial begin 
        I = 4'h1;
        Sel = 2'b00;
        #20; 
        Sel = 2'b01;
        #20;
        Sel = 2'b10;
        #20;
        Sel = 2'b11;
        #20;

         I = 4'h6;
        Sel = 2'b00;
        #20; 
        Sel = 2'b01;
        #20;
        Sel = 2'b10;
        #20;
        Sel = 2'b11;
        #20;

         I = 4'ha;
        Sel = 2'b00;
        #20; 
        Sel = 2'b01;
        #20;
        Sel = 2'b10;
        #20;
        Sel = 2'b11;
        #20;

         I = 4'hf;
        Sel = 2'b00;
        #20; 
        Sel = 2'b01;
        #20;
        Sel = 2'b10;
        #20;
        Sel = 2'b11;
    end 
endmodule