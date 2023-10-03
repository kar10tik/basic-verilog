`timescale 1ns/100ps

module t_ff(input t, input clk, output q, output q_bar);

wire t, clk, q_bar;
reg q;

initial
    q = 0;

always @(posedge clk)
begin
    q <= t ^ q;
    //Cannot assign q_bar here
    //Otw q_bar inverts prev Q not current Q
end

assign q_bar = ~q;

endmodule