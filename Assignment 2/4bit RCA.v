module RCA4bit(
    input [3:0] A, B,
    input Cin,
    output [3:0] S,
    output CarryOut
);
wire C1, C2, C3;
FullAdder FA0(.A(A[0]), .B(B[0]), .C(Cin), .Sum(S[0]), .Carry(C1));
FullAdder FA1(.A(A[1]), .B(B[1]), .C(C1), .Sum(S[1]), .Carry(C2));
FullAdder FA2(.A(A[2]), .B(B[2]), .C(C2), .Sum(S[2]), .Carry(C3));
FullAdder FA3(.A(A[3]), .B(B[3]), .C(C3), .Sum(S[3]), .Carry(CarryOut));
endmodule
