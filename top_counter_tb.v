`timescale 1ns / 1ps

module top_counter_tb;

reg clk;
reg rst;
reg mode;

wire [3:0] updown_out;
wire [3:0] mod10_out;
wire slow_clk;

top_counter dut(clk, rst, mode, updown_out, mod10_out, slow_clk);

always #5 clk = ~clk;

initial
begin
    clk = 0;
    rst = 1;
    mode = 1;

    #50
    rst = 0;

    #30000000
    mode = 0;

    #50000000
    $finish;
end

endmodule
