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
