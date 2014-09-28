[[Heroku.png|align=center]]

#### [Heroku | Cloud Application Platform](https://www.heroku.com/)


## Setup

- [Sinatra + PostgreSQL + Unicorn な Web サーバーを Heroku に構築する ｜ Developers.IO](http://dev.classmethod.jp/server-side/ruby-on-rails/sinatra-postgresql-unicorn-on-heroku/)
```bash
$ git push heroku master
```


## Create App

```bash
$ cd myapp
```

```bash
$ heroku apps:create myapp
```


## PostgreSQL

作成対象のHerokuアプリディレクトリに移動

```bash
$ cd myapp
```

Dev Plan (FREE) でデータベースを作成

```bash
$ heroku addons:add heroku-postgresql:dev
```

config/database.yml の作成 ([※Heroku側は自動生成される](https://devcenter.heroku.com/articles/ruby-support#build-behavior))
```bash
configディレクトリを作成し、database.yml (developmentのみ)を記述して配置する
```

```bash
.gitignore に database.yml を追加
```

マイグレーション

```bash
$ heroku run rake db:migrate
```

初期データ投入 (db/seeds.rb)

```bash
$ heroku run rake db:seed
```

再起動

```bash
$ heroku restart
```


### Heroku Button

![Deploy](https://www.herokucdn.com/deploy/button.png)

要するに「$ heroku clone」的なイメージ。アプリ開発者はボタンを設置することでHeroku上での利用促進になる。利用者はワンクリックで自分のHerokuアカウントにデプロイできるようになる。
- [Heroku | Introducing Heroku Button](https://blog.heroku.com/archives/2014/8/7/heroku-button)
- [voting-badgeをHeroku Buttonに対応させました | Web Scratch](http://efcl.info/2014/08/08/heroku-button/)
- [Deploy to Heroku / Webアプリケーションのポータビリティ再び - naoyaのはてなダイアリー](http://d.hatena.ne.jp/naoya/20140809/1407556488)
