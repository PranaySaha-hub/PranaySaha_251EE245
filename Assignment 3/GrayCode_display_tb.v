`timescale 1ns/1ps
module GrayCode_display_tb;
    reg[2:0] gray_input;
    wire[6:0] disp;
    GrayCode_Display uut (
        .G(gray_input),
        .seven_seg_out(disp)
    );
    initial begin
        $display("Time \t G[2] G[1] G[0] A B C D E F G");
        $monitor("%0t \t %b \t %b \t %b \t %b \t %b \t %b \t %b \t %b \t %b \t %b",
                  $time, gray_input[2], gray_input[1], gray_input[0],
                  disp[0], disp[1], disp[2], disp[3], disp[4], disp[5], disp[6]);
        
        gray_input=3'b000; #10;
        gray_input=3'b001; #10;
        gray_input=3'b011; #10;
        gray_input=3'b010; #10;
        gray_input=3'b110; #10;
        gray_input=3'b111; #10;
        gray_input=3'b101; #10;
        gray_input=3'b100; #10;
        $finish;
    end
endmodule
