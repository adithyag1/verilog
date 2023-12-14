module bcdcountertb;
reg clk,rst;
wire [3:0] count;

bcdcounter uut(
    .clk(clk),
    .rst(rst),
    .count(count)
);

initial begin
    $dumpfile("test.vcd");
    $dumpvars(0,bcdcountertb);
    clk=1;
    rst=1;
    #10;
    rst=0;
    #200;
    $finish;
end

always #5 clk=~clk;

endmodule