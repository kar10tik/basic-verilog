`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.08.2023 14:41:36
// Design Name: 
// Module Name: seqdetect_1010_overlap_tb
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


module seqdetect_1010_overlap_tb();

reg CLK; reg RST; reg SEQ;
wire DETECT;

seqdetect_1010_overlap seq1010(.clk(CLK), .rst(RST), .seq(SEQ), .detect(DETECT));
initial
begin
    CLK = 1'b0; SEQ = 1'b0; RST = 1'b0;
    #5 RST = 1'b1; 
    #20 SEQ = 1'b1;
    #20 SEQ = 1'b0; #20 SEQ = 1'b1; #20 SEQ = 1'b0;
    #20 SEQ = 1'b1; #20 SEQ = 1'b0; #20 SEQ = 1'b0;
    #20 SEQ = 1'b1; #20 SEQ = 1'b0; #20 SEQ = 1'b0;
end

always #5 CLK =~ CLK;

endmodule