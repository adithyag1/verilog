module dmuxptb;
    reg in;
    reg [2:0] sel;
    wire [7:0] out;

    dmuxp uut(
        .in(in),
        .sel(sel),
        .out(out)
    );

    initial begin
        $dumpfile("test.vcd");
        $dumpvars(0, dmuxptb); 
        in = 1;
        sel=0;
        #80;
        $finish;
    end
    always #5 in=~in;
    always #10 sel=sel+1;
endmodule
