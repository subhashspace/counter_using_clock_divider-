`timescale 1ns / 1 ps

module mod10_counter(clk,rst,count);

input clk,rst;
output reg [3:0] count;

always @(posedge clk or posedge rst) 
begin
        if (rst)
            count <= 4'b0000;
        else if (count == 4'd9)
            count <= 4'b0000;
        else
            count <= count + 1;
end

endmodule