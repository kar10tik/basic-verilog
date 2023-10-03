module t_ff_tb();

reg T, CLK;
wire Q, Q_BAR;

t_ff TFF(.t(T), .clk(CLK), .q(Q), .q_bar(Q_BAR));

initial 
begin
T = 1'B0; CLK = 1'B0;
end

always #30 T =~ T;
always #5 CLK =~CLK;

initial
$monitor("T = %b, Q = %b, Q_BAR = %b", T, Q, Q_BAR);
endmodule