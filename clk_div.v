`timescale 1ns / 1 ps

module clk_div(clk,rst,slow_clk);

input clk,rst;
output reg slow_clk;

    reg [19:0] count;

    always @(posedge clk or posedge rst) 
    begin
        if (rst) 
        begin
            count <= 0;
            slow_clk <= 0;
        end
        else begin
            count <= count + 1'b1;
            slow_clk <= count[19];   
        end
    end

endmodule