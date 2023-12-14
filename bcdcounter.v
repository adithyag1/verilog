module bcdcounter(
    input clk,rst,
    output reg [3:0] count
);

always @(posedge clk) begin
    if(rst) count=0;
    else begin
        if(count==9) count=0;
        else count=count+1;
    end
end
endmodule