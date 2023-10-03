`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.07.2023 21:34:33
// Design Name: 
// Module Name: mux_4_1_tb
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


module mux_4_1_tb();

reg A, B, IN0, IN1, IN2, IN3; //SELECT LINES
wire OUT;

mux_4_1 mux4_1(.sel1(A), .sel2(B), .I0(IN0), .I1(IN1), .I2(IN2),
               .I3(IN3), .Y(OUT));
               
initial
begin
    IN0 = 1'B0; IN1 = 1'B1; IN2 = 1'B0; IN3 = 1'B1;
    A = 0; B = 0;
end

always #20 IN0 =~ IN0;
always #40 IN1 =~ IN1;
always #60 IN2 =~ IN2;
always #80 IN3 =~ IN3;
always #100 A =~ A;
always #160 B =~ B;

initial
begin
$monitor("Select 0:%b, Select 1: %b", A, B);
$monitor("I0: %b, I1: %b, I2: %b, I3: %b", IN0, IN1, IN2, IN3);
$monitor("OUTPUT: %b", OUT);
$monitor("Simtime: %g", $time);
end

endmodule