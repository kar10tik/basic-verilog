`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.07.2023 20:19:37
// Design Name: 
// Module Name: d_ff_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module d_ff_tb();
reg d, clk;
wire q, q_bar;

d_ff d_ff1(.d(d), .q(q), .q_bar(q_bar), .clk(clk));

initial 
begin
    clk = 0;  
    d = 1'b0;
end

always #50 clk =~ clk;
always #30 d = ~d;

initial
$monitor("D = %b, Q = %b, Qbar = %b, CLK = %b", d, q, q_bar, clk);
//Clock Generator

endmodule