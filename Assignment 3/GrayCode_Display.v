module GrayCode_Display(
    input [2:0] G,
    output reg [6:0] seven_seg_out
);

always @(*) begin
    seven_seg_out[0] = (~G[1]&(~G[0])) | (G[1]&(~G[2])) | (G[0]&G[2]);
    seven_seg_out[1] = (~G[2]) | (G[2]&(~G[0]));
    seven_seg_out[2] = (~G[1]) | (~G[0]) |(G[0]&G[1]&G[2]);
    seven_seg_out[3] = (G[0]&G[1])|(G[0]&G[2])|((~G[0])&(~G[2]));
    seven_seg_out[4] = (~G[2]&(~G[1])&(~G[0])) | (~G[2]&G[1]&G[0]) | (G[2]&(~G[1])&G[0]);
    seven_seg_out[5] = (G[1]&G[2]) | (G[0]&G[2])| ((~G[2])&(~G[1])&~G[0]);
    seven_seg_out[6] = G[1] | (G[2]&~G[0]);
end

endmodule
