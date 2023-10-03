module seq_detect_0110_overlap(
input wire clk, input wire rst, input wire seq,
output reg detect);

parameter SIZE = 3, STATE0 = 3'b000, STATE1 = 3'b001, 
STATE2 = 3'B010, STATE3 = 3'b011, STATE4 = 3'b100;

reg[SIZE-1:0] currentstate, nextstate;

always @(posedge clk, posedge rst)
begin
    if (!rst) currentstate <= STATE0;
    else currentstate <= nextstate;
end

//Next State Logic
always @(*)
begin
nextstate <= currentstate;
case (currentstate)
    STATE0: begin
    if (seq == 0) nextstate <= STATE1; 
    $display(currentstate);
    end
    STATE1: begin
      if (seq == 1) nextstate <= STATE2;
      $display(currentstate);
    end
    STATE2: begin 
      if (seq == 0) nextstate <= STATE1;
      else nextstate <= STATE3;
      $display(currentstate);
    end 
    STATE3: begin
      if (seq == 1) nextstate <= STATE0;
      else nextstate <= STATE4;
      $display(currentstate);
    end
    STATE4: begin
      if (seq == 1) nextstate <= STATE0;
      else nextstate <= STATE1;
      $display(currentstate);
    end
    default: nextstate <= STATE0;
endcase
end

//Output Logic
always @(currentstate)
begin
case (currentstate)
   STATE4: detect = 1'b1;
   default: detect = 1'b0;
endcase
end

endmodule