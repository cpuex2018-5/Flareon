`timescale 1ns / 1ps

module subtop #(
    parameter MEMORY_SIZE = 262144
) (
    input clk,
    input rst,
    output logic [31:0] s_axi_awaddr,
    input s_axi_awready,
    output logic s_axi_awvalid,
    output logic [31:0] s_axi_wdata,
    output logic [3:0] s_axi_wstrb,
    output logic s_axi_wvalid,
    input s_axi_wready,
    input [1:0] s_axi_bresp,
    input s_axi_bvalid,
    output logic s_axi_bready,
    output logic [31:0] s_axi_araddr,
    output logic s_axi_arvalid,
    input s_axi_arready,
    input [31:0] s_axi_rdata,
    input [1:0] s_axi_rresp,
    input s_axi_rvalid,
    output logic s_axi_rready,
    output logic m_we,
    output logic [17:0] m_addr,
    input [31:0] m_r_data,
    output logic [31:0] m_w_data,
    output logic [14:0] b_addr,
    input [31:0] b_rdata
);

logic [31:0] b_stat;
logic [9:0] b_stage;
logic [1:0] b_resp;

logic b_flag1;
logic b_flag2;

(* mark_debug = "true" *) logic [31:0] e_program_counter;
(* mark_debug = "true" *) logic signed [31:0] e_registers[0:31];
(* mark_debug = "true" *) logic [31:0] f_registers[0:31];
logic signed [31:0] reg_rs1, reg_rs2, reg_rd;
logic [31:0] freg_rs1, freg_rs2, freg_rd;

logic [6:0] e_funct7;
logic [6:0] e_opcode;
logic [2:0] e_funct;
logic [4:0] e_rd, e_rs1, e_rs2;

logic [31:0] e_imm_sham;
logic [31:0] e_imm_i;
logic [31:0] e_imm_s;
logic [31:0] e_imm_u;
logic [31:0] e_imm_b;
logic [31:0] e_imm_j;

logic [3:0] e_wait;

logic [31:0] fadd_y;
logic [31:0] fsub_y;
logic [31:0] fmul_y;
logic [31:0] fdiv_y;
logic [31:0] fsqrt_y;
logic feq_y;
logic flt_y;
logic fle_y;
logic [31:0] fneg_y;
logic [31:0] fabs_y;
logic [31:0] finv_y;

logic [9:0] exe_remain;

(* mark_debug = "true" *) logic [39:0] global_counter;

logic main_stage;
logic fetch_stage;
logic set_stage;
logic out_stage;

localparam OP_OP    = 7'b0110011;
localparam BRANCH   = 7'b1100011;
localparam OP_JALR  = 7'b1100111;
localparam OP_AUIPC = 7'b0010111;
localparam OP_LUI   = 7'b0110111;
localparam OP_LOAD  = 7'b0000011;
localparam LOAD_FP  = 7'b0000111;
localparam OP_STORE = 7'b0100011;
localparam STORE_FP = 7'b0100111;
localparam OP_FP    = 7'b1010011;
localparam OP_INOUT = 7'b1111111;
localparam OP_IMM   = 7'b0010011;

assign e_funct7 = b_rdata[31:25];
assign e_opcode = b_rdata[6:0];
assign e_funct = b_rdata[14:12];
assign e_rd = b_rdata[11:7];
assign e_rs1 = b_rdata[19:15];
assign e_rs2 = b_rdata[24:20];
assign e_imm_sham = {27'd0, b_rdata[24:20]};
assign e_imm_i = b_rdata[31]?{20'd1048575,b_rdata[31:20]}:{20'd0,b_rdata[31:20]};
assign e_imm_s = b_rdata[31]?{20'd1048575, b_rdata[31:25],b_rdata[11:7]}:{20'd0, b_rdata[31:25],b_rdata[11:7]};
assign e_imm_u = {b_rdata[31:12],12'd0};
assign e_imm_b = b_rdata[31]?{19'd524287, b_rdata[31],b_rdata[7],b_rdata[30:25],b_rdata[11:8],1'b0}:{19'd0, b_rdata[31],b_rdata[7],b_rdata[30:25],b_rdata[11:8],1'b0};
assign e_imm_j = b_rdata[31]?{11'd2047,b_rdata[31],b_rdata[19:12],b_rdata[20],b_rdata[30:21],1'b0}:{11'd0, b_rdata[31],b_rdata[19:12],b_rdata[20],b_rdata[30:21],1'b0};

fadd fadd(.clk(clk),
          .x1(freg_rs1),
          .x2(freg_rs2),
          .y(fadd_y));
fsub fsub(.clk(clk),
          .x1(freg_rs1),
          .x2(freg_rs2),
          .y(fsub_y));
fmul fmul(.x1(freg_rs1),
          .x2(freg_rs2),
          .y(fmul_y));
fdiv fdiv(.clk(clk),
          .x1(freg_rs1),
          .x2(freg_rs2),
          .y(fdiv_y));
fsqrt fsqrt(.clk(clk),
            .x(freg_rs1),
            .y(fsqrt_y));
feq feq(.x1(freg_rs1),
        .x2(freg_rs2),
        .y(feq_y));
flt flt(.x1(freg_rs1),
        .x2(freg_rs2),
        .y(flt_y));
fle fle(.x1(freg_rs1),
        .x2(freg_rs2),
        .y(fle_y));
fneg fneg(.x(freg_rs1),
          .y(fneg_y));
fabs fabs(.x(freg_rs1),
          .y(fabs_y));
finv finv(.clk(clk),
          .x(freg_rs1),
          .y(finv_y));
          
initial begin
    main_stage = 0;
    m_we = 0;
end

always @(posedge clk) begin
    if (!rst) begin
        e_registers[0] <= 0;
        e_registers[2] <= MEMORY_SIZE*4;

        s_axi_araddr <= 0;
        s_axi_arvalid <= 0;
        s_axi_awaddr <= 0;
        s_axi_awvalid <= 0;
        s_axi_bready <= 0;
        s_axi_rready <= 0;
        s_axi_wdata <= 0;
        s_axi_wstrb <= 0;
        s_axi_wvalid <= 0;
        b_stage <= 0;
        b_addr <= 0;

        global_counter <= 0;
        e_program_counter <= 0;
        e_wait <= 0;

        main_stage <= 1;
        fetch_stage <= 1;
        set_stage <= 0;
        out_stage <= 0;
        exe_remain <= 0;

        m_we <= 0;
    end else if (main_stage) begin
        m_we <= 0;
        if (fetch_stage) begin
            if (global_counter != 0) begin
                e_registers[e_rd] <= reg_rd;
                f_registers[e_rd] <= freg_rd;
            end

            fetch_stage <= 0;
            set_stage <= 1;
            global_counter <= global_counter + 1;
        end
        else if (set_stage) begin
            reg_rs1 <= e_registers[e_rs1];
            reg_rs2 <= e_registers[e_rs2];
            reg_rd <= e_registers[e_rd];
            freg_rs1 <= f_registers[e_rs1];
            freg_rs2 <= f_registers[e_rs2];
            freg_rd <= f_registers[e_rd];
            set_stage <= 0;

            case(e_opcode)
                LOAD_FP: exe_remain <= 2;
                OP_LOAD: exe_remain <= 2;
                OP_FP: begin //float
                    case(e_funct7)
                        7'b0000000: exe_remain <= 2; //fadd
                        7'b0000100: exe_remain <= 2; //fsub
                        7'b0001100: exe_remain <= 3; //fdiv
                        7'b0101100: exe_remain <= 3; //fsqrt
                        7'b0010000: if (e_funct == 3'b011) exe_remain <= 2; else exe_remain <= 1; //finv
                        default: exe_remain <= 1;
                    endcase
                end
                default: exe_remain <= 1;
            endcase
        end
        else if (exe_remain > 0) begin
            if (e_opcode != OP_INOUT) begin
                exe_remain <= exe_remain - 1;
                if (exe_remain == 1) begin
                    out_stage <= 1;
                    e_program_counter <= e_program_counter+4;
                end
            end

            if (e_opcode == OP_IMM) begin
                case(e_funct)
                    3'b000: reg_rd <= reg_rs1 + e_imm_i;      //addi
                    3'b001: reg_rd <= reg_rs1 << e_imm_sham;  //slli
                    3'b100: reg_rd <= reg_rs1 ^ e_imm_i;      //xori
                    3'b101: reg_rd <= reg_rs1 >>> e_imm_sham; //srai
                    3'b111: reg_rd <= reg_rs1 & e_imm_i;      //andi
                    default: reg_rd <= reg_rs1;
                endcase
            end
            else if (e_opcode == OP_LUI) reg_rd <= e_imm_u;
            else if (e_opcode == OP_AUIPC) reg_rd <= e_program_counter + e_imm_u;
            else if (e_opcode == OP_JALR) begin
                reg_rd <= e_program_counter + 4;
                e_program_counter <= reg_rs1 + e_imm_i;
            end
            else if (e_opcode == BRANCH) begin
                case(e_funct)
                    3'b000: e_program_counter <= e_program_counter + (reg_rs1==reg_rs2?e_imm_b:4); // beq
                    3'b001: e_program_counter <= e_program_counter + (reg_rs1!=reg_rs2?e_imm_b:4); // bne
                    3'b100: e_program_counter <= e_program_counter + (reg_rs1<reg_rs2?e_imm_b:4);  // blt
                    3'b101: e_program_counter <= e_program_counter + (reg_rs1>=reg_rs2?e_imm_b:4); // bge
                    default: e_program_counter <= e_program_counter;
                endcase
            end
            else if (e_opcode == OP_LOAD) begin
                m_addr <= (reg_rs1 + e_imm_i)>>2;
            end
            else if (e_opcode == OP_STORE) begin
                m_addr <= (reg_rs1 + e_imm_s)>>2; m_w_data <= reg_rs2; m_we <= 1;
            end
            else if (e_opcode == OP_OP) begin
                if (e_funct == 3'b000) begin
                    case(e_funct7)
                        7'b0000000: reg_rd <= reg_rs1+reg_rs2; //add
                        7'b0100000: reg_rd <= reg_rs1-reg_rs2; //sub
                        default:    reg_rd <= reg_rs1-reg_rs2;
                    endcase
                end else if (e_funct == 3'b100) begin //xor
                    reg_rd <= reg_rs1 ^ reg_rs2;
                end
            end
            else if (e_opcode == LOAD_FP) begin
                m_addr <= (reg_rs1 + e_imm_i)>>2;
            end
            else if (e_opcode == STORE_FP) begin
                m_addr <= (reg_rs1 + e_imm_s)>>2; m_w_data <= freg_rs2; m_we <= 1;
            end
            else if (e_opcode == OP_FP) begin
                case(e_funct7)
                    7'b0000000: if (exe_remain == 1) freg_rd <= fadd_y;  //fadd
                    7'b0000100: if (exe_remain == 1) freg_rd <= fsub_y;  //fsub
                    7'b0001000: freg_rd <= fmul_y;                       //fmul
                    7'b0001100: if (exe_remain == 1) freg_rd <= fdiv_y;  //fdiv
                    7'b0101100: if (exe_remain == 1) freg_rd <= fsqrt_y; //fsqrt
                    7'b1010000: begin
                                    case(e_funct)
                                        3'b010: reg_rd <= feq_y; //feq
                                        3'b001: reg_rd <= flt_y; //flt
                                        3'b000: reg_rd <= fle_y; //fle
                                        default: reg_rd <= fle_y;
                                    endcase
                                end
                    7'b0010000: begin
                                    case(e_funct)
                                        3'b000: freg_rd <= freg_rs1; //fmv
                                        3'b001: freg_rd <= fneg_y;   //fneg
                                        3'b010: freg_rd <= fabs_y;   //fabs
                                        3'b011: if (exe_remain == 1) freg_rd <= finv_y;   //finv
                                        default: freg_rd <= finv_y;
                                    endcase
                                end
                    default: freg_rd <= freg_rd;
                endcase
            end
            else if (e_opcode == OP_INOUT) begin //inout
                if (e_funct == 0) begin //out
                    if (e_wait == 0) begin
                        b_stage <= 0;
                        e_wait <= 1;
                    end else if (b_stage == 0) begin
                        s_axi_arvalid <= 1;
                        s_axi_araddr <= 8;
                        b_stage <= 1;
                    end else if (b_stage == 1) begin
                        if (s_axi_arready) begin
                            s_axi_rready <= 1;
                            s_axi_arvalid <= 0;
                            b_stage <= 2;
                        end
                    end else if (b_stage == 2) begin
                        if (s_axi_rvalid) begin
                            s_axi_rready <= 0;
                            b_resp <= s_axi_rresp; 
                            b_stat <= s_axi_rdata;
                            b_stage <= 3;
                        end
                    end else if (b_stage == 3) begin
                        if (b_stat[3] == 0) begin
                            b_flag1 <= 0;
                            b_flag2 <= 0;
                            s_axi_awvalid <= 1;
                            s_axi_awaddr <= 4;
                            s_axi_wvalid <= 1;
                            s_axi_wdata <= reg_rs1;
                            s_axi_wstrb <= 1;
                            b_stage <= 4;
                        end else begin
                            s_axi_arvalid <= 1;
                            s_axi_araddr <= 8;
                            b_stage <= 1;
                        end
                    end else if (b_stage == 4) begin
                        if (b_flag1 == 0 && s_axi_awready) begin
                            s_axi_awvalid <= 0;
                            b_flag1 <= 1;
                        end
                        if (b_flag2 == 0 && s_axi_wready) begin
                            s_axi_wvalid <= 0;
                            b_flag2 <= 1;
                        end
                        if (b_flag1 && b_flag2) begin
                            s_axi_bready <= 1;
                            b_stage <= 5;
                        end
                    end else if (b_stage == 5) begin
                        if (s_axi_bvalid) begin
                            s_axi_bready <= 0;
                            exe_remain <= 0;
                            out_stage <= 1;
                            e_program_counter <= e_program_counter+4;
                            e_wait <= 0;
                        end
                    end
                end else begin // in
                    if (e_wait == 0) begin
                        b_stage <= 0;
                        e_wait <= 1;
                    end else if (b_stage == 0) begin
                        s_axi_arvalid <= 1;
                        s_axi_araddr <= 8;
                        b_stage <= 1;
                    end else if (b_stage == 1) begin
                        if (s_axi_arready) begin
                            s_axi_arvalid <= 0;
                            s_axi_rready <= 1;
                            b_stage <= 2;
                        end
                    end else if (b_stage == 2) begin
                        if (s_axi_rvalid) begin
                            s_axi_rready <= 0;
                            b_resp <= s_axi_rresp; 
                            b_stat <= s_axi_rdata;
                            b_stage <= 3;
                        end
                    end else if (b_stage == 3) begin
                        if (b_stat[0] == 1) begin
                            s_axi_arvalid <= 1;
                            s_axi_araddr <= 0;
                            b_stage <= 4;       
                        end else begin
                            b_stage <= 0;
                        end
                    end else if (b_stage == 4) begin
                        if (s_axi_arready) begin
                            s_axi_arvalid <= 0;
                            s_axi_rready <= 1;
                            b_stage <= 5;
                        end
                    end else if (b_stage == 5) begin
                        if (s_axi_rvalid) begin
                            s_axi_rready <= 0;
                            reg_rd <= {24'd0, s_axi_rdata[7:0]};
                            b_stage <= 6;
                        end
                    end else if (b_stage == 6) begin
                        exe_remain <= 0;
                        out_stage <= 1;
                        e_program_counter <= e_program_counter+4;
                        e_wait <= 0;
                    end
                end
            end
        end
        else if (out_stage) begin
            if (e_opcode == LOAD_FP) freg_rd <= m_r_data;
            if (e_opcode == OP_LOAD) reg_rd  <= m_r_data;

            out_stage <= 0;
            fetch_stage <= 1;

            if (b_addr == e_program_counter/4) begin
                main_stage <= 0;
            end
            b_addr <= e_program_counter/4;
        end
        e_registers[0] <= 0;
    end
end

endmodule

