module asyncp(
    input rst,clk,
    output reg [3:0] count
);

    always @(posedge clk) begin
        if(rst) count=0;
        else count[0]=~count[0];
    end
    always @(negedge count[0]) begin
        if(rst) count=0;
        else count[1]=~count[1];
    end
    always @(negedge count[1]) begin
        if(rst) count=0;
        else count[2]=~count[2];
    end
    always @(negedge count[2]) begin
        if(rst) count=0;
        else count[3]=~count[3];
    end
endmodule