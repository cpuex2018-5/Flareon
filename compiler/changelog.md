# Change log

## 12/9
* デフォルトのinlineの深さを10にした
* `tp` (thread pointer)という使われていないレジスタがあったので汎用レジスタとして使うようにした
* `fp` の情報が実質使われてなさそうだったので`fp`を使うことを完全にやめた結果命令数が 3594532166 -> 3311174180になった
    * 今後場合によってはやっぱり使うということになることもありそう

## 12/12
* `fdiv` を分けるのをやめた
* デフォルトでのinlineの深さを15にした
* `Asm.t` から `IfFEq`, `IfFLE` をなくして `KNormal.t` の時点で`fle`,`feq`の結果とboolとの比較に持ち込むようにした。
    * この結果、-inline=15だと3303616314, -inline=20だと3189324226になって少しだけ縮まった。

## 12/15
* global.mlで定義される変数をヒープに移すことをし始めた
* アセンブラに`lda` (load data address) というpseudo-instructionを追加:
```
lda rd, symbol -> lui rd, symbol[31:12]
                  addi rd, rd, symbol[11:0]
```
    * `la` と異なり1命令目が`lui`
    * 主にヒープに置いているglobal変数のアクセス時に使う

* `create_float_array` を作るのを忘れていたので作った(今まで正常に動いていたのは奇跡っぽい)
* `create_array`, `create_float_array` を少し短くした

## 12/16
* `and_net`, `or_net`, `dir_vecs`, `light_dirvec`, `reflections` 以外のglobal変数をヒープに置いた
    * 動的命令数は2940636593 (inline=15) になった
* `and_net` は `int array array` なのでアセンブリを次のようにするんじゃないかなぁと思っていましたがなんかうまくいかなくて困っている
    * そもそも`-1`に対応するcoeファイルの行が0xffffffffになってない気もしたのでアセンブラにもバグがありそう(けどcoeを手で編集しても動かなかった)
```
min_caml_and_net_1:
    .word   -1
min_caml_and_net:
    .word   min_caml_and_net_1
    .word   min_caml_and_net_1
    .word   min_caml_and_net_1
    .word   min_caml_and_net_1
    (...これが50行)
```
