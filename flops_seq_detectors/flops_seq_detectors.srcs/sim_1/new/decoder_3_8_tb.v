`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.07.2023 22:21:09
// Design Name: 
// Module Name: decoder_3_8_tb
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


module decoder_3_8_tb();

reg IN0, IN1, IN2, EN;
wire[7:0] OUT;

decoder_3_8 dec1(.A(IN0), .B(IN1), .C(IN2), .EN(EN), .Y(OUT)); 

initial
begin
    IN0 = 0'B0; IN1 = 0'B0; 
    IN2 = 0'B0; EN = 1'B1;
end

always #20 IN0 =~ IN0;
always #40 IN1 =~ IN1;
always #60 IN2 =~ IN2;
always #140 EN =~ EN;

initial
begin
$monitor("EN: %b, A: %b, B: %b, C: %b", EN, IN0, IN1, IN2);
$monitor("Y: %b", OUT);
$monitor("Simtime: %g", $time);
end
endmodule
