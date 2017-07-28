
概要
--------------------

- masterブランチのみの運用
- pushされると自動でデプロイします


開発環境
--------------------

- タスクランナー `gulp`
- コーディング `Pug` `Sass` `CoffeeScript`

```bash
# コンパイルするためにウォッチ
$ cd your-work-directory/
$ gulp

# 実際いじるのは src/ 配下
$ vim src/piyopiyo.pug
```

### 初回 ###

```bash
# 作業ディレクトリへ移動
$ cd your-work-directory/

# リポジトリをclone
$ git clone https://github.com/maonyoro/cr_official.git
$ cd cr_official.net

# 必要なモジュールやライブラリをインストール
$ npm install

# 環境によっては以下も
$ npm install -g gulp coffee-script

# もっと遡るとNode.jsが必要。npmコマンド使えない場合はこれ
$ brew install node
```

