`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.07.2023 15:54:05
// Design Name: 
// Module Name: shiftreg_4bit_tb
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


module shiftreg_4bit_tb();

reg IN, CLK, RST, R_L;
wire OUT;

shiftreg_4_bit SREG4B(.in(IN), .clk(CLK), .rst(RST), .r_l(R_L), .out(OUT));

initial
begin
IN = 0'B0; CLK = 0'B0; RST = 1'B1; R_L = 0'B0; 
end

initial
$monitor("IN = %b, RST = %b, OUT = %b", IN, RST, OUT);
always #5 CLK = ~CLK;
always #400 RST = ~RST;
always #200 R_L = ~R_L;
always #30 IN = ~IN;
endmodule
