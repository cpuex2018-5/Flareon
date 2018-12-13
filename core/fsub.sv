`timescale 1ns / 1ps

module fsub(
    input clk,
    input wire [31:0] x1,
    input wire [31:0] x2,
    output wire [31:0] y);

    wire s1, s2;
    wire [7:0] e1, e2;
    wire [22:0] f1, f2;

    assign {s1, e1, f1} = (x1[30:0] < x2[30:0])?x2:x1;
    assign {s2, e2, f2} = (x1[30:0] < x2[30:0])?{~x1[31],x1[30:0]}:{~x2[31],x2[30:0]};

    wire [7:0] e12;
    wire [4:0] e3;
    wire [24:0] f3;
    assign e12 = e1 - e2;
    assign e3 = e12>30?30:e12;
    assign f3 = (s1==s2)?({2'b01,f1}+({2'b01,f2} >> e3)):({2'b01,f1}-({2'b01,f2}>>e3));

    wire [7:0] e4;
    wire [22:0] f4;
      
    logic [24:0] tmp_f3;  
    logic [7:0] tmp_e1;  
    logic tmp_s1;  

    assign e4 = (tmp_f3[24] == 1)?tmp_e1+1:
                (tmp_f3[23] == 1)?tmp_e1:
                (tmp_f3[22] == 1)?tmp_e1 - 1:
                (tmp_f3[21] == 1)?tmp_e1 - 2:
                (tmp_f3[20] == 1)?tmp_e1 - 3:
                (tmp_f3[19] == 1)?tmp_e1 - 4:
                (tmp_f3[18] == 1)?tmp_e1 - 5:
                (tmp_f3[17] == 1)?tmp_e1 - 6:
                (tmp_f3[16] == 1)?tmp_e1 - 7:
                (tmp_f3[15] == 1)?tmp_e1 - 8:
                (tmp_f3[14] == 1)?tmp_e1 - 9:
                (tmp_f3[13] == 1)?tmp_e1 - 10:
                (tmp_f3[12] == 1)?tmp_e1 - 11:
                (tmp_f3[11] == 1)?tmp_e1 - 12:
                (tmp_f3[10] == 1)?tmp_e1 - 13:
                (tmp_f3[9] == 1)?tmp_e1 - 14:
                (tmp_f3[8] == 1)?tmp_e1 - 15:
                (tmp_f3[7] == 1)?tmp_e1 - 16:
                (tmp_f3[6] == 1)?tmp_e1 - 17:
                (tmp_f3[5] == 1)?tmp_e1 - 18:
                (tmp_f3[4] == 1)?tmp_e1 - 19:
                (tmp_f3[3] == 1)?tmp_e1 - 20:
                (tmp_f3[2] == 1)?tmp_e1 - 21:
                (tmp_f3[1] == 1)?tmp_e1 - 22:
                (tmp_f3[0] == 1)?tmp_e1 - 23:0;

    assign f4 = (tmp_f3[24] == 1)?tmp_f3 >> 1:
                (tmp_f3[23] == 1)?tmp_f3:
                (tmp_f3[22] == 1)?tmp_f3 << 1:
                (tmp_f3[21] == 1)?tmp_f3 << 2:
                (tmp_f3[20] == 1)?tmp_f3 << 3:
                (tmp_f3[19] == 1)?tmp_f3 << 4:
                (tmp_f3[18] == 1)?tmp_f3 << 5:
                (tmp_f3[17] == 1)?tmp_f3 << 6:
                (tmp_f3[16] == 1)?tmp_f3 << 7:
                (tmp_f3[15] == 1)?tmp_f3 << 8:
                (tmp_f3[14] == 1)?tmp_f3 << 9:
                (tmp_f3[13] == 1)?tmp_f3 << 10:
                (tmp_f3[12] == 1)?tmp_f3 << 11:
                (tmp_f3[11] == 1)?tmp_f3 << 12:
                (tmp_f3[10] == 1)?tmp_f3 << 13:
                (tmp_f3[9] == 1)?tmp_f3 << 14:
                (tmp_f3[8] == 1)?tmp_f3 << 15:
                (tmp_f3[7] == 1)?tmp_f3 << 16:
                (tmp_f3[6] == 1)?tmp_f3 << 17:
                (tmp_f3[5] == 1)?tmp_f3 << 18:
                (tmp_f3[4] == 1)?tmp_f3 << 19:
                (tmp_f3[3] == 1)?tmp_f3 << 20:
                (tmp_f3[2] == 1)?tmp_f3 << 21:
                (tmp_f3[1] == 1)?tmp_f3 << 22:
                (tmp_f3[0] == 1)?tmp_f3 << 23:0;

    assign y = {tmp_s1,e4,f4}; 

always @(posedge clk) begin
    tmp_f3 <= f3;
    tmp_e1 <= e1;
    tmp_s1 <= s1;
end
         
endmodule   

