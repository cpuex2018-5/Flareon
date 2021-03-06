`timescale 1ns / 1ps

//return x1/x2
module fdiv(
  input clk,
  input [31:0] x1,
  input [31:0] x2,
  output logic [31:0] y);

  logic [31:0] x2_inv;
  logic [31:0] tmp;
  logic [31:0] tmp_y;
  finv u1(clk, x2, x2_inv);

  fmul u2(clk, x1, tmp, tmp_y);

always @(posedge clk) begin
    tmp <= x2_inv;
    y <= tmp_y;
end
endmodule   
   
   
   
   
   
   
   
   
   
   
   
   
