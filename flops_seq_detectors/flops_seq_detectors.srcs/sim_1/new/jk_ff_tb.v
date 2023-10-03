`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.07.2023 11:06:53
// Design Name: 
// Module Name: jk_ff_tb
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


module jk_ff_tb();

reg J, K, CLK;
wire Q, Q_BAR;

jk_ff JKFF(.j(J), .k(K), .clk(CLK), .q(Q), .q_bar(Q_BAR));

initial begin
CLK = 1'b0; J = 1'B0; K = 1'B0; 
end

always #5 CLK = ~CLK;
always #20 J = ~J;
always #40 K = ~K; 

initial
$monitor("J = %b, K = %b, Q = %b, Q_BAR = %b", J, K, Q, Q_BAR);

endmodule
