`timescale 1ns / 1 ps

module top_counter(clk,rst,mode,updown_out,mod10_out,slow_clk);

input clk,rst,mode;
output [3:0] updown_out;
output [3:0] mod10_out;

output slow_clk;
wire s;

    clk_div dut1 (clk, rst, s);
    up_down_counter dut2 (s, rst, mode, updown_out);
    mod10_counter dut3 (s, rst, mod10_out);
    assign slow_clk = s;
endmodule