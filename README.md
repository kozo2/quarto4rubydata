# quarto4rubydata
「RubyDataエコシステムへのQuartoの導入とその利用の推進のためのコミュニティ活動」用リポジトリ

## 紹介 YouTube

https://www.youtube.com/playlist?list=PLuFJcS7UhfnGrFUnCvK33jmhTLPUDfKsg

![image](https://user-images.githubusercontent.com/12192/226752499-2ea36341-6028-4e0b-b3d2-1e7a28519615.png)


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
docker build -t quarto4rubydata .
docker run -it --rm -p 8888:8888 quarto4rubydata jupyter notebook --NotebookApp.default_url=/lab/ --ip=0.0.0.0 --port=8888 --allow-root --NotebookApp.token=''
```

ウェブブラウザで `localhost:8888` を開いてください。
