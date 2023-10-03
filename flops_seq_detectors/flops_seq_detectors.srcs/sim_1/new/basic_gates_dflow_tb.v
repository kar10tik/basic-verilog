`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.07.2023 21:17:53
// Design Name: 
// Module Name: basic_gates_dflow_tb
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


module basic_gates_dflow_tb();

reg IN1, IN2;
wire AND, OR, NAND, NOR, XOR, XNOR;

basic_gates_dflow bg_d1(.A(IN1), .B(IN2), .AND(AND), .OR(OR),  
                      .NAND(NAND), .NOR(NOR), .XOR(XOR), .XNOR(XNOR));

initial
    begin
           IN1 = 0'B0; IN2 = 0'B0;
#10        IN1 = 0'B0; IN2 = 0'B1;
#15        IN1 = 0'B1; IN2 = 0'B0;
#10        IN1 = 0'B1; IN2 = 0'B1;
    end

initial 
$monitor("A = %b, B = %b, AND = %b, OR = %b \n",IN1, IN2, AND, OR,  
  "NAND = %b, XOR = %b, XNOR = %b, Simtime = %g", NAND, NOR, XOR, XNOR, $time);

endmodule