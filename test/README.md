## test (compiler, asm, simulator)

### setup (初回のみ)
```
$ ./setup.sh    # 初回のみ
```

### 使い方

`./test.sh` でgcd, fib, ack, mandelbrot, minrtをコンパイル&アセンブルしてminrt以外をシミュレーションする。
テスト後に以下のようにstdoutに出ていればOK

```
$ ./test.sh
gcd (expected: 2700)   : 2700
fib (expected: 832040) : 832040
ack (expected: 23)     : 23
mandelbrot             : OK (results were identical)
```
