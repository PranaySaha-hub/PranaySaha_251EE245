`timescale 1ns/1ps
module RCA4bit_tb;

reg [3:0] A, B;
reg carry_in;
wire [3:0] sum;
wire carry_out;

RCA4bit uut(
    .A(A),
    .B(B),
    .Cin(carry_in),
    .S(sum),
    .CarryOut(carry_out)
);

initial begin 
    $display("Time\t A\t B\t CarryIn \t Sum \tCarryOut");
    $monitor("%0t\t %b\t %b\t %b \t %b \t %b", $time, A, B, carry_in, sum, carry_out);

     carry_in = 0;
        A=4'b0000; B=4'b0000; #10;
        A=4'b0001; B=4'b0001; #10;
        A=4'b0011; B=4'b0101; #10;
        A=4'b1111; B=4'b0001; #10;
        A=4'b1010; B=4'b0101; #10;

        carry_in = 1;
        A=4'b0000; B=4'b0000; #10;
        A=4'b1111; B=4'b1111; #10;
        A=4'b1010; B=4'b0101; #10;
        A=4'b1111; B=4'b1111; #10;
        A=4'b1010; B=4'b0101; #10;
    $finish;
    end

endmodule
