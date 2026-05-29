module FullSubtractor(
    input A,
    input B,
    input C,
    output reg Diff,
    output reg BorrowOut
    
);
always @(*) begin
    Diff = A ^ B ^ C;
    BorrowOut = ~A + ~A&C + B&C;
end
endmodule

