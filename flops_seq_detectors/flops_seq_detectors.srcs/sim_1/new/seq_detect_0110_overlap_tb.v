module seq_detect_0110_overlap_tb();

reg CLK, RST, SEQ;
wire OUT;

seq_detect_0110_overlap dtr(.clk(CLK), .rst(RST), .seq(SEQ), .detect(OUT));

initial
begin
CLK = 1'B0; RST = 1'B0; #10 RST = 1'B1; 
SEQ <= 1'B0; #20 SEQ <= 1'B1; #20 SEQ <= 1'B1; 
#20 SEQ <= 1'B0; #20 SEQ <= 1'B1; #20 SEQ <= 1'B1; 
#20 SEQ <= 1'B0; #20 SEQ <= 1'B0; #20 SEQ <= 1'B0; 
#20 SEQ <= 1'B1; #20 SEQ <= 1'B1; #20 SEQ <= 1'B0; 
end

always #5 CLK =~ CLK;
endmodule