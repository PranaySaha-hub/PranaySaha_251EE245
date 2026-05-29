module FullAdder(
    input A,
    input B,
    input C,
    output reg Sum,
    output reg Carry
);

always @(*) begin
    Sum = A ^ B ^ C;
    Carry = (A&B) | (B&C) | (A&C);
end

endmodule