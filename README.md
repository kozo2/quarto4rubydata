# quarto4rubydata
「RubyDataエコシステムへのQuartoの導入とその利用の推進のためのコミュニティ活動」用リポジトリ

## (セットアップ不要で) このプロジェクトを試用するには

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/kozo2/quarto4rubydata/HEAD)
をクリックしてください。

すると "Binder" という「このリポジトリの内容に応じたJupyterLab環境を構築・提供してくれるオンラインサービス」
が立ち上げられます。

それが立ち上がり終わるまで少し時間を要しますが気長にお待ちください。

もし問題無く JupyterLab が立ち上がったら、左のサイドバーに見える ipynb をダブルクリックし、その内容を実行・確認してみてください。

## 上記の試用を Docker を用いてご自身のローカル環境で行うには

このリポジトリをクローンし、下記のコマンドを実行してください。

```
docker build -t try-rubyquarto .
docker run -it --rm -p 8888:8888 try-rubyquarto jupyter notebook --NotebookApp.default_url=/lab/ --ip=0.0.0.0 --port=8888 --allow-root
```

ウェブブラウザで `localhost:8888` を開いてください。
