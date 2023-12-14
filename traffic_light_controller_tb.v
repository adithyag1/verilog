module traffic_light_controller_tb(

	);

    reg clk, reset_n, Sa, Sb;
    wire Ra, Ya, Ga, Rb, Yb, Gb;

    traffic_light_controller CTRL0(
        .clk(clk),
        .reset_n(reset_n),
        .Sa(Sa),
        .Sb(Sb),
        .Ra(Ra),
        .Ya(Ya),
        .Ga(Ga),
        .Rb(Rb),
        .Yb(Yb),
        .Gb(Gb)
    );

    always
    begin
        clk=1'b0;
        #5;
        clk=1'b1;
        #5;
    end

    initial
    begin
	$dumpfile("test.vcd");
   	$dumpvars(0,traffic_light_controller_tb);
        reset_n=1'b0;
        #2
        reset_n=1'b1;

        Sa=0;
        Sb=0;

        #60;

        Sa=0;
        Sb=1;
        #200;

        Sa=1;
        Sb=1;
        #300;

        Sa=1;
        Sb=0;
        #200;

        Sb=0;
        Sa=0;

        #60 $stop;
    end

endmodule