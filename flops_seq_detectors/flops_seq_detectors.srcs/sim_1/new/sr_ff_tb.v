`timescale 1ns / 100ps
module sr_ff_tb();

reg S, R, CLK;
wire Q, Q_bar;

sr_ff SRFF(.s(S), .r(R), .clk(CLK), .q(Q), .q_bar(Q_bar));

initial 
begin 
     S = 1'b0; R = 1'b0; CLK = 1'b0;
end

always #30 CLK =~ CLK;
//always #50 S = ~S;
//always #60 R = ~R;
initial begin 
 #10 S = 1'B0; R = 1'B1;
 #10 S= 1; R= 0; 
 #10 S= 0; R= 1;
end

initial 
begin
$monitor("S = %b, R = %b, Q = %b, Q_bar = %b", S, R, Q, Q_bar);
$monitor("Simtime: %g", $time);
end

endmodule