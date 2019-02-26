# Flareon Compiler

## Usage
### build
```
$ make
```

### コンパイル&アセンブル方法
```
$ ./min-caml [filename].ml              # コンパイル
$ ./../asm/main [-d|-v] [filename].s    # アセンブル
```

あるいは

```
$ ./build.sh [-d|-v] [filename].ml
```

test/fib.mlからtest/fib.sをコンパイラで生成し、さらにそれをアセンブラに通してtest/fib.binを生成する。

build.shのオプションの意味:

* `-v` : アセンブラのdebugモードの出力を[filename].asmに上書き
* `-d` : アセンブラのverboseモードの出力を[filename].asmに上書き


## raytracer/minrt.mlのコンパイルについて

```
$ ./build.sh [-d|-v] raytracer/minrt.ml
```
