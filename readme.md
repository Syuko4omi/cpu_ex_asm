# アセンブラ

## 実行方法
```
make
./asm "filename"
```

ファイルは.sでも.txtでもok。ファイル名をつけなければ標準入力から読む（ctrl+Dで終了を通知すると変換される）。
アセンブリはstdoutに出力(16進数表示)。適宜リダイレクション等で.txtファイルに入れてあげる。

## バイナリ変換
例えば、各行に16進数命令が書かれたhoge.txtを実際のバイナリに変換するには、
```
python txt_to_bin.py hoge.txt hoge.bin
```
とすればよい。

## 注意
読ませるアセンブリの（テキスト）ファイルは、最終行を改行すること。これがないと最終行が読み取られないまま出力されてしまう。
