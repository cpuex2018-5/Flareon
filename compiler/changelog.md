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

## 12/17
* `and_net`, `or_net` を含め全てのglobal変数をヒープに置いた
    * 結局バグっていたのはアセンブラだった(データが-1の時の扱いが正しくなかった)

## 12/19
* globals.mlをコンパイルした結果をglobals.sに分離、アセンブラでリンクさせるようにした
* `lwl`, `swl`, `flwl`, `fswl` というpseudo-instructionを追加した
    * offsetとして数字ではなくlabelをとる命令

## 12/21
* 使われていない命令をアセンブラが解釈しないようにした
* 関数が別の関数呼び出しを含まない時に`ra` をsaveしないようにした

## 12/22
* sin, cos, atanでのレジスタのセーブをなくした(callee-saveということで)
* 他のライブラリ関数はどうしよう、、、

## 12/24
* `ft11` レジスタが常に0をとるようにし、 `fzero` というABI nameを新しくつけた
    * 命令数はやや減った (2627831426 -> 2582578030)

## 1/22
* 0.0を表すラベルを完全に消した(即値0.0に `fzero` のみで対応するようにした)
* `fmv [reg] fzero` も消せる範囲で消した
    * 命令数は最終的に 2582106361 へ
* 関数呼び出しの直前(レジスタ退避をした後)のmvを極力減らした
    * regAlloc.mlで、liveだけど関数呼び出し前に使われない変数はSpillさせる

## 1/23
* `create_array`, `create_float_array` で長さが固定長の部分をインライン&ループを展開
* `floor` の改善
* `float_of_int`, `int_of_float` はインラインさせると命令数が増えてしまった
* ft9, ft10はlibでのみ使うようにする
* sin, cos, atanでセーブするべきレジスタを指定&使うレジスタをft10などに退避させる

## 2/7
* branch with immedaiteの命令を入れた (`beqi`, `bnei`, `blti`, `bgti`)
    * `blei`, `bgei` はそこまで使われていなかった(`blei`が0回、`bgei`が1回？)のと4つだと収まりが良いのでこの4つだけで良いとした
    * 命令数 2517444239 -> 2479339409

## 2/8
* デフォルトのinlineの深さを100にする(命令数 1926968919)

## 2/12
* 不要なbranchに関する覗き穴最適化的なことをした(命令数 1913457870)
* early returnを実装(命令数 1884066536)
* tupleの初期化の手順変更(上のようなものを下のようにする)
```
mv    a3, gp
addi  gp, gp, 8
sw    a0, 4(a3)
sw    a1, 0(a3)
mv    a0, a3
```
```
sw    a0, 4(gp)
sw    a1, 0(gp)
mv    a0, gp
addi  gp, gp, 8
```

## 2/15
* `li` でロードされる定数が絶対値の小さい負の値(特に-1)の場合に2命令にならないようにした(アセンブラを直した)
* 下のような無駄な `li` を減らすpeephole最適化(1841811101 -> 1833296271)
```
bne     a0, zero, .solver_rect_else_24
li      a0, 0
```
* 下のような式が多かったので、`not (xor x (not y)) = xor x y` と簡約(1833296271 -> 1817094652)
```diff
-xori    a0, a0, 1
 xor     a1, a0, a1
-xori    a1, a1, 1
```
* `print_int`, `sin`, `cos` の無駄を省く (-> 1816767717)
* レジスタの中身の値に関する(ブロック単位での)推論
```diff
-       li      a0, 1
-       bne     a0, zero, .solver_else_25
+       li      a0, 3
        jr      ra
 .solver_else_23:
        li      a0, 0
-.solver_cont_24:
-       bne     a0, zero, .solver_else_25
        jr      ra
 .solver_else_21:
        li      a0, 0
-.solver_cont_22:
-       bne     a0, zero, .solver_else_25
        jr      ra
 .solver_else_18:
        li      a0, 0
-.solver_cont_19:
-       bne     a0, zero, .solver_else_25
-       jr      ra
-.solver_else_25:
-       li      a0, 3
        jr      ra
```

## 2/16
* ラベル+定数オフセットで指定された場所へのload / storeをするpseudo-op `lwd`, `swd`, `flwd`, `fswd` をアセンブラに追加
    * 1816767717 -> 1765850988
```diff
-       lda     a0, min_caml_screen
        call    min_caml_read_float
-       fswl    fa0, min_caml_screen(zero)
+       fswd    fa0, min_caml_screen(0)
        call    min_caml_read_float
-       fsw     fa0, 4(a0)
+       fswd    fa0, min_caml_screen(4)
        call    min_caml_read_float
-       fsw     fa0, 8(a0)
+       fswd    fa0, min_caml_screen(8)
```

## 2/17
* 静的に判断可能な分岐を解析する(完全ではない)
    * 1723640532 -> 1710062209
```diff
        li      a2, 1
-       b       .solver_rect_cont_2
+       li      a0, 1
+       jr      ra
 .solver_rect_else_6:
        li      a2, 0
-       b       .solver_rect_cont_2
+       b       .solver_rect_cont_2+4
 .solver_rect_else_4:
        li      a2, 0
-       b       .solver_rect_cont_2
+       b       .solver_rect_cont_2+4
 .solver_rect_else_1:
        li      a2, 0
-.solver_rect_cont_2:
-       bne     a2, zero, .solver_rect_else_8
+.solver_rect_cont_2+4:
        flw     fa3, 4(a1)
```

## 2/18
* peepholeとか
* 共通部分式削除をちょっと改良したけどあまり減らなかった(1700902931)
