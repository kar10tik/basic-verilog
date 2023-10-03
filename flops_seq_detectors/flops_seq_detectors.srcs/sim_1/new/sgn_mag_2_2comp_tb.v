`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2023 15:04:17
// Design Name: 
// Module Name: sgn_mag_2_2comp_tb
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


module sgn_mag_2_2comp_tb();

wire [4:0] out; reg [4:0] in;
sgn_mag_2_2comp #(.SIZE(5)) tb(.num(in), .comp(out));

initial
begin
in = 5'b10111; 
#20 in = 5'b10000;
#20 in = 5'b00110;
#20 in = 5'b01010; 

end

endmodule
