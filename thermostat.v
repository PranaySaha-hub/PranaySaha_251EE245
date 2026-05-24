module top_module (
    input too_cold,
    input too_hot,
    input mode,
    input fan_on,
    output heater,
    output aircon,
    output fan
); 
    always @(*) begin
    heater = 0; aircon = 0; fan = 0;  // defaults
    if (too_cold && mode == 1'b1) begin
        heater = 1'b1;
        fan    = 1'b1;
    end else if (too_hot && mode == 1'b0) begin
        aircon = 1'b1;
        fan    = 1'b1;
    end else begin
        fan = fan_on;
    end
end
                

endmodule
