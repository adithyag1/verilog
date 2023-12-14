module muxp(
    input [7:0] in,
    input [2:0] sel,
    output reg y
);
    always @(sel) begin
        y=in[sel];
    end
endmodule
