module top(
	input clk_100mhz,
        output [3:0] ledR,ledG,ledB
	);

    wire i_clk;
    assign i_clk = clk_100mhz;

    reg o_led;

    assign ledR[3:0] = { o_led, o_led, o_led, o_led };
    assign ledG[3:0] = { o_led, o_led, o_led, o_led };
    assign ledB[3:0] = { o_led, o_led, o_led, o_led };

    localparam ctr_width = 32;
    reg [ctr_width-1:0] ctr = 0;

    always @(posedge i_clk) begin
	ctr <= ctr + 1;
        o_led <= ctr[26];
    end

endmodule

