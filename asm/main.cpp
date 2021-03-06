#include <iostream>
#include <fstream>
#include <string>
#include <string.h>
#include <assert.h>
#include <string.h>
#include "bingen.h"

// 01の列にする(4桁ごとに空白)
std::string PrettyString(uint32_t inst) {
    std::string str;
    for (int i = 0; i < 32; i++) {
        str.push_back(((inst >> (31 - i)) & 0x1)? '1' : '0');
        if (i % 4 == 3) str.push_back(' ');
    }
    assert(str.size() == 40);
    return str;
}

// 2-pass assembler of EEVEE (32-bit)
int main(int argc, char* argv[])
{
    if (argc < 2) {
        std::cout << "Usage: ./main [-a] [-v | -d] [filename].s" << std::endl;
        return 0;
    }

    bool is_verbose = false;
    bool is_debug = false;
    bool is_ascii = false;

    if (argc > 2) {
        if (strcmp(argv[1], "-a") == 0 || strcmp(argv[2], "-a") == 0)
            is_ascii = true;

        if (strcmp(argv[1], "-v") == 0 || strcmp(argv[2], "-v") == 0)
            is_verbose = true;

        if (strcmp(argv[1], "-d") == 0 || strcmp(argv[2], "-d") == 0)
            is_debug = true;
    }

    std::string infile = argv[argc - 1];
    if (!(infile[infile.size() - 2] == '.' && infile[infile.size() - 1] == 's')) {
        std::cout << "ERROR: The input file should have suffix '.s'" << std::endl;
        return 0;
    }

    const bool is_minrt = infile.size() >= 7 && infile.substr(infile.size() - 7, 5) == "minrt";

    // Input library (read_int, read_float)
    std::string iolibname = is_minrt ?  "libcontest.S" : "libmincaml.S";
    // common library for other built-in functions
    std::string cmnlibname = "libcommon.S";

    std::ifstream ifs(infile), iolib(iolibname), cmnlib(cmnlibname);
    if (ifs.fail() || iolib.fail() || cmnlib.fail()) {
        std::cerr << "ERROR: Failed to open the file" << std::endl;
        return 0;
    }

    std::string outfile(infile.begin(), infile.end() - 2);
    std::ofstream ofs(outfile + ".bin");
    std::ofstream coefs(outfile + ".coe");
    std::string str;
    BinGen bingen(std::move(ofs), std::move(coefs), is_verbose, is_debug, is_ascii);

    // Round 0: Read Data Label
    while (getline(ifs, str))
        bingen.ReadDataLabels(str);
    while (getline(cmnlib, str))
        bingen.ReadDataLabels(str);
    while (getline(iolib, str))
        bingen.ReadDataLabels(str);
    if (is_minrt) {
        std::ifstream glbifs(infile.substr(0, infile.size() - 7) + "globals.s");
        while(getline(glbifs, str))
            bingen.ReadDataLabels(str);
        glbifs.close();
    }

    bingen.OnReadLabelsCompleted();
    ifs.clear();
    ifs.seekg(0, std::ios::beg);
    iolib.clear();
    iolib.seekg(0, std::ios::beg);
    cmnlib.clear();
    cmnlib.seekg(0, std::ios::beg);

    // Round 1: Skim through the assembly code and get the position of each label
    while (getline(ifs, str))
        bingen.ReadLabels(str);
    while (getline(cmnlib, str))
        bingen.ReadLabels(str);
    while (getline(iolib, str))
        bingen.ReadLabels(str);
    if (is_minrt) {
        std::ifstream glbifs(infile.substr(0, infile.size() - 7) + "globals.s");
        while(getline(glbifs, str))
            bingen.ReadLabels(str);
        glbifs.close();
    }

    // Get ready for the round 2
    bingen.OnReadLabelsCompleted();
    ifs.clear();
    ifs.seekg(0, std::ios::beg);
    iolib.clear();
    iolib.seekg(0, std::ios::beg);
    cmnlib.clear();
    cmnlib.seekg(0, std::ios::beg);

    // Round 2: Replace the instructions with bytecodes
    while (getline(ifs, str))
        bingen.Main(str, true);
    while (getline(cmnlib, str))
        bingen.Main(str, true);
    while (getline(iolib, str))
        bingen.Main(str, true);
    if (is_minrt) {
        std::ifstream glbifs(infile.substr(0, infile.size() - 7) + "globals.s");
        while(getline(glbifs, str))
            bingen.Main(str, false);
        glbifs.close();
    }

    bingen.Finish();
    ifs.close();
    iolib.close();
    cmnlib.close();

    return 0;
}
