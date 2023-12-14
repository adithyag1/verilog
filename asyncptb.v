module asyncptb;
    reg clk,rst;
    wire [3:0] count;

    asyncp uut(
        .clk(clk),
        .rst(rst),
        .count(count)
    );

    initial begin
        $dumpfile("test.vcd");
        $dumpvars(0,asyncptb);
        rst=1;
        clk=1;
        #10;
        rst=0;
        #200;
        $finish;
    end

    always #5 clk=~clk;
endmodule