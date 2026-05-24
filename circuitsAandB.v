module Q4a (input x, input y, output z);
    assign z= (x^y)&x;
endmodule
module Q4b ( input x, input y, output z );
    assign z=(~x & ~y) | (x&y) ;
endmodule

module top_module (input x, input y, output z);
    wire w1,w2,w3,w4;
    Q4a block1 (.x(x), .y(y), .z(w1));
    Q4b block2 (.x(x), .y(y), .z(w2));
    Q4a block3 (.x(x), .y(y), .z(w3));
    Q4b block4 (.x(x), .y(y), .z(w4));
    assign z= (w1|w2) ^ (w3&w4);
endmodule
