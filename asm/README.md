# Flareon Assembler

## Usage

### assembler

    $ ./setup.sh
    $ make
    $ ./main [-a] [-v | -d] hoge.s  # `hoge.bin` will be generated

for tests:

    $ make bingen_test
    $ ./bingen_test

#### options

* `-v` : verbose mode (アセンブリの入力とそれを変換したバイナリ、pcの値をstdoutに表示)

```
$ ./main -v target/fib.s
(pc 0):	addi	sp,sp,-8
1111 1111 1000 0001 0000 0001 0001 0011

(pc 1):	sw	ra,4(sp)
    0000 0000 0001 0001 0010 0010 0010 0011

(pc 2):	sw	fp,0(sp)
    0000 0000 1000 0001 0010 0000 0010 0011

(pc 3):	addi	fp,sp,8        # fp: old stack pointer
    0000 0000 1000 0001 0000 0100 0001 0011

(pc 4):	li	a0,4
    0000 0000 0100 0000 0000 0101 0001 0011

(pc 5):	call	fib
    0000 0000 0000 0000 0000 0011 0001 0111     0000 0001 1100 0011 0000 0000 1110 0111

(pc 7):	mv	a5,a0
    0000 0000 0000 0101 0000 0111 1001 0011
```

* `-d` : debug mode (pcの値を先頭につけたアセンブリをstdoutに出力)

```
$ ./main -d target/fib.s
	_min_caml_start: # main entry point
(   0)		addi	sp, sp, -8
(   4)		sw	ra, 4(sp)
(   8)		sw	fp, 0(sp)
(  12)		addi	fp, sp, 8
	#	main program starts
(  16)		li	a0, 3
(  20)		call	fib.10
	#	main program ends
(  28)		lw	ra, 4(sp)
(  32)		lw	fp, 0(sp)
(  36)		addi	sp, sp, 8
(  40)		jal	zero, end
```

* `-a` : ascii mode (バイナリファイルではなく`0`, `1`でのASCIIファイルを出力する, vivadoのシミュレーション用)
    * `-v`, `-d` と併用可能

## Instruction set
Wikiを参照:
* <https://github.com/cpuex2018-5/Flareon/wiki/Flareon-ISA>
* <https://github.com/cpuex2018-5/Flareon/wiki/Flareon-Instruction-Format>


## その他
* このアセンブラ内でライブラリのリンクの処理も行なっています。 `libcommon.S` および、 `libmincaml.S` または `libcontest.S` のいずれかの2つのライブラリがリンクされます
    * `minrt.s` をファイル名の部分文字列として含むアセンブリを入力とした場合、 `libcommon.S` および `libcontest.S` がリンクされます
    * その他の場合、 `libcommon.S` および `libcontest.S` がリンクされます
    * `libcontest.S` ではバイナリ入力、 `libmincaml.S` ではアスキー入力にそれぞれ対応した `read_int` & `read_float` が定義されています
* `.file`, `.option`, `.align`, `.globl`, `.type`, `.size`, `.ident` などのマーカーは読み飛ばします
* 即値は10進数として解釈されます
* プログラムの最後に32bitの0の羅列がつきます
* 浮動小数演算のround modeの情報はダミーです
