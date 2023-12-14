module fullprac(
    input a,b,c,
    output S,C
    );

    assign S=a^b^c;
    assign C=(b&c)|(a&(b^c));
endmodule