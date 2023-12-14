module dmuxp(input wire in, input wire [2:0] sel, output reg [7:0] out);

    always @ (in,sel)
    begin
        out=0;
        out[sel]=in;
    end

endmodule
