`timescale 1ns/1ps

module FullSubtractor_tb;
    reg tb_a, tb_b, tb_c;
    wire tb_Diff, tb_BorrowOut;

    FullSubtractor uut (     
        .A(tb_a), .B(tb_b), .C(tb_c),
        .Diff(tb_Diff), .BorrowOut(tb_BorrowOut)
    );

    initial begin
        $display("Time\t A\t B\t C\t Diff\t BorrowOut");
        $monitor("%0t \t %b \t %b \t %b \t %b \t %b",
                  $time, tb_a, tb_b, tb_c, tb_Diff, tb_BorrowOut);

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