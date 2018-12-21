#ifndef __BINGEN_H__
#define __BINGEN_H__

#include <iostream>
#include <fstream>
#include <vector>
#include <map>

class BinGen {
    public:
        typedef struct inst {
          public:
            inst() {};
            ~inst() {};

            uint32_t fst = 0;  // instruction
            uint32_t snd = 0;  // instruction
            uint32_t third = 0;
            uint32_t data = 0; // floating-point data
            void set_fst(uint32_t v) { fst = v; has_fst = true; }
            void set_snd(uint32_t v) { snd = v; has_snd = true; }
            void set_third(uint32_t v) { third = v; has_third = true; }
            void set_data(uint32_t v) { data = v; has_data = true; }
            bool is_empty() { return !has_fst && !has_snd && !has_third && !has_data; }
            bool is_inst() { return has_fst; }
            bool is_multiple_inst() { return has_fst && has_snd; }
            bool is_triple_inst() { return has_fst && has_snd && has_third; }
            bool is_data() { return has_data; }

          private:
            bool has_fst = false;
            bool has_snd = false;
            bool has_third = false;
            bool has_data = false;
        } Inst;

        BinGen(std::ofstream ofs, std::ofstream coefs, bool is_verbose, bool is_debug, bool is_ascii);

        // 1周目
        void ReadLabels(std::string input);

        // 1周目のあとに呼ぶ
        void OnReadLabelsCompleted();

        // 2周目
        void Main(std::string input);

        // 終了処理
        void Finish();

        void Parse(std::string input, std::string &mnemo, std::vector<std::string> &arg);
        void ParseOffset(std::string arg, std::string* reg, uint32_t* offset);
        void ParseOffsetLabel(std::string arg, std::string* reg, std::string* label);

        // Parses and evaluates the input. Returns the converted instructions (zero, one or two)
        Inst Convert(std::string input);

        std::string ToString(uint32_t inst);
        std::string InstToString(Inst inst);
        void PrintInt(uint32_t inst);
        void PrintInst(Inst inst);

    private:
        typedef std::vector<std::pair<int, uint32_t> > Fields;

        uint32_t lui(std::string rd, uint32_t imm);
        uint32_t auipc(std::string rd, uint32_t imm);
        uint32_t jalr(std::string rd, std::string rs1, uint32_t imm);

        // beq, bne, blt, bge
        uint32_t branch(std::string mnemo, std::string rs1, std::string rs2, uint32_t offset);

        uint32_t lw(std::string rd, std::string rs1, uint32_t offset);
        uint32_t sw(std::string rs2, std::string rs1, uint32_t offset);

        // addi, xori, andi
        uint32_t op_imm(std::string mnemo, std::string rd, std::string rs1, uint32_t imm);

        // slli, srai
        uint32_t op_imm_shift(std::string mnemo, std::string rd, std::string rs1, uint32_t imm);

        // add, sub, xor
        uint32_t op(std::string mnemo, std::string rd, std::string rs1, std::string rs2);

        uint32_t read(std::string rd);
        uint32_t write(std::string rs);

        uint32_t flw(std::string frd, std::string rs, uint32_t imm);
        uint32_t fsw(std::string frs2, std::string frs1, uint32_t imm);

        // fsqrt, fabs, fneg, fmv, finv (2 operands)
        uint32_t f_op2(std::string mnemo, std::string frd, std::string frs);

        // fadd, fsub, fmul, fdiv (3 operands)
        uint32_t f_op3(std::string mnemo, std::string frd, std::string frs1, std::string frs2);

        // feq, flt, fle
        uint32_t f_cmp(std::string mnemo, std::string rd, std::string frs1, std::string frs2);

        uint32_t Pack(Fields fields);
        void CheckImmediate(uint32_t imm, int range, std::string func_name);
        void WriteInst(uint32_t inst);
        void WriteData(uint32_t data);

        // |imm|がラベルの場合は対応する値を返し、即値ならstoiして返す　
        uint32_t MyStoi(std::string imm);

        // コード領域上のラベルをさす|label|を具体的な即値に変換する
        uint32_t SolveLabel(std::string label);
        // データ領域上のラベルをさす|label|を具体的な即値に変換する
        uint32_t SolveDataLabel(std::string label);

        // Number of instructions read so far
        int nline_ = 0;
        // Number of data read so far
        int ndata_ = 0;

        bool is_verbose_;
        bool is_debug_;
        bool is_ascii_;

        bool data_mode_ = false;
        std::ofstream ofs_;
        std::ofstream coefs_;
        std::map<std::string, int> label_map_;
        std::map<std::string, int> data_map_;
        const std::map<std::string, int> regmap_;
        const std::map<std::string, int> fregmap_;

        void print_binary(uint32_t inst);
};

#endif  // __BINGEN_H__
