## test (compiler, asm, simulator)

### setup (初回のみ)
```
$ ./setup.sh    # 初回のみ
```

`min-caml-asm/` 以下に、 `../compiler/min-caml` でコンパイルしたgcd, fib, ack, mandelbrot, minrtのアセンブリへのシンボリックリンクがつくられる。

### minrt.mlのコンパイルについて

1. `../compiler/ `のディレクトリで次を実行
```
$ ./min-caml raytracer/minrt.ml
```

2. このディレクトリで次を実行
```
$ ./../asm/main [-d|-v] min-caml-asm/minrt.s
$ ./../simulator/eevee_sim -f [-d] min-caml-asm/minrt.bin
```

### コンパイラ・アセンブラ・シミュレータのテスト
`./test.sh` でgcd, fib, ack, mandelbrot, minrtをコンパイル&アセンブルし、minrt以外をシミュレーションする。
テスト後に以下のようにstdoutに出ていればOK

```
$ ./test.sh
gcd (expected: 2700)   : 2700
fib (expected: 832040) : 832040
ack (expected: 23)     : 23
mandelbrot             : OK (results were identical)
```
