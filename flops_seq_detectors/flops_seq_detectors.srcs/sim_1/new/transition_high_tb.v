`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.07.2023 17:23:22
// Design Name: 
// Module Name: transition_high_tb
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


module transition_high_tb();

reg IN, CLK, RST; wire OUT;

transition_high t_high(.in(IN), .out(OUT), .clk(CLK), .rst(RST));

initial
begin
IN = 1'B0; 
CLK = 1'B0; 
RST = 1'B1;
end

always #5 CLK = ~CLK;
always #200 RST =~ RST;
always #20 IN =~ IN;
endmodule
