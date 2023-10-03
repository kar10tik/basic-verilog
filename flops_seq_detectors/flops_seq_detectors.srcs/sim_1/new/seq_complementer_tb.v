module seq_complementer_tb();

reg CLK; reg RST; reg SEQ; reg STATE;
wire DETECT;

seq_complementer comp(.clk(CLK), .rst(RST), .seq(SEQ), .detect(DETECT));

initial begin
    CLK = 1'b0; RST = 1'b0; #5 RST = 1'b1; 
    SEQ = 1'b0;
end

always #5 CLK = ~CLK;
always #20 SEQ = ~SEQ;

endmodule