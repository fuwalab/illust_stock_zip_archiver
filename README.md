# pixta_zip_archiver
このツールは Windows 向けの ZIP アーカイバーです。
同じ名前の `png`, `eps` があるとき、それらを ZIP で圧縮します。

## 対象
- PIXTA をお使いのイラストレーター
  - 提出時に `png`, `eps` を ZIP 圧縮するのが毎回面倒な方
  
## 使い方

1. 本ツールのダウンロード
    - [ここ](https://github.com/fuwalab/pixta_zip_archiver/releases) から、最新のリリース（ `zip` ）をダウンロード
1. 作業フォルダへの配置
    - 解凍してできた `archive` フォルダをそのまま `png`, `eps` ファイル群のある作業フォルダへコピー
        ![1](https://github.com/fuwalab/pixta_zip_archiver/blob/master/assets/1.png)
1. スクリプトの実行
    1. `archive` フォルダへ移動する
    1. `archive.bat` をダブルクリックする
        ![2](https://github.com/fuwalab/pixta_zip_archiver/blob/master/assets/2.png)
    1. 実行中
        - 処理が始まると自動で表示され、完了すると閉じます
          ![3](https://github.com/fuwalab/pixta_zip_archiver/blob/master/assets/3.png)
1. ファイルの確認
    1. 一つ上の階層（作業フォルダ）に作成されている `zip` フォルダに移動する
       ![4](https://github.com/fuwalab/pixta_zip_archiver/blob/master/assets/4.png)
       ![5](https://github.com/fuwalab/pixta_zip_archiver/blob/master/assets/5.png)
    1. ファイルの中身を確認して正しく圧縮できていることを確認する
        ![6](https://github.com/fuwalab/pixta_zip_archiver/blob/master/assets/6.png)
