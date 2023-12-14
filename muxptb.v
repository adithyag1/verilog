
module muxptb;
    reg [7:0] in;
    reg [2:0] sel;
    wire y;
    muxp tb(
        .in(in),
        .sel(sel),
        .y(y)
    );
    initial begin
        $dumpfile("test.vcd");
        $dumpvars(0,muxptb);
        in=8'b1101001;
        sel=0;
        #80;
        $finish;
    end
    always #10 sel=sel+1;
endmodule
