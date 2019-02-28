# testing compiler, asm & simulator

コンパイラ・アセンブラ・シミュレータをテストしてみるためのディレクトリです。

### setup (初回のみ)
```
$ ./setup.sh    # 初回のみ
```

`min-caml-asm/` 以下に、 `../compiler/min-caml` でコンパイルしたgcd, fib, ack, mandelbrot, minrtのアセンブリへのシンボリックリンクがつくられる。

### コンパイラ・アセンブラ・シミュレータのテスト
#### gcd, fib, ack, mandelbrotのテスト
`./test.sh` でgcd, fib, ack, mandelbrotをコンパイル&アセンブルしシミュレータ上で実行させる。
テスト後に以下のようにstdoutに出ていればOK

```
$ ./test.sh
gcd (expected: 2700)   : 2700
fib (expected: 832040) : 832040
ack (expected: 23)     : 23
mandelbrot             : OK (results were identical)
```
#### minrtのテスト
`./test_minrt.sh` でminrtをコンパイル&アセンブルしシミュレータで実行させる。
テスト後に以下のようにstdoutに出ていればOK

```
$ ./test_minrt.sh
compiling ../compiler/raytracer/minrt.ml (may take some time)
assembling min-caml-asm/minrt.s
running simulator (may take some time)
minrt                  : OK (results were identical)
```
