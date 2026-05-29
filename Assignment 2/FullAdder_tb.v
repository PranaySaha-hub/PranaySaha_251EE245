`timescale 1ns/1ps

module FullAdder_tb;
    reg tb_a, tb_b, tb_c;
    wire tb_Sum, tb_Carry;

    FullAdder uut (          // ← must match exactly "FullAdder"
        .A(tb_a), .B(tb_b), .C(tb_c),
        .Sum(tb_Sum), .Carry(tb_Carry)
    );

    initial begin
        $display("Time\t A\t B\t C\t Sum\t Carry");
        $monitor("%0t \t %b \t %b \t %b \t %b \t %b",
                  $time, tb_a, tb_b, tb_c, tb_Sum, tb_Carry);

        tb_a=0; tb_b=0; tb_c=0; #10;
        tb_a=0; tb_b=0; tb_c=1; #10;
        tb_a=0; tb_b=1; tb_c=0; #10;
        tb_a=0; tb_b=1; tb_c=1; #10;
        tb_a=1; tb_b=0; tb_c=0; #10;
        tb_a=1; tb_b=0; tb_c=1; #10;
        tb_a=1; tb_b=1; tb_c=0; #10;
        tb_a=1; tb_b=1; tb_c=1; #10;

        $finish;
    end
    
endmodule