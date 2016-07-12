---
slug: heroku
title: Heroku
layout: page.jade
---

![Heroku](/wiki/assets/img/Heroku.png)

#### [Heroku | Cloud Application Platform](https://www.heroku.com/)

## Articles

- [Herokuのメリット、デメリット - Qiita](http://qiita.com/shu_0115/items/0106198f7a0be2f2a509)
- [プロフェッショナルのための実践Heroku入門 - Talpa memorandum](http://kahei.org/blog/2014/09/heroku.html)
- [仕組みもわかる 初めてのHerokuアプリケーションづくり！ Gitでのデプロイもさらりとこなす （1/3）：CodeZine](http://codezine.jp/article/detail/8187)
- [Java WebアプリケーションをHerokuへデプロイする #herokujp - #侍ズム](http://samuraism.jp/diary/2014/10/15/1413361980000.html)
- [最近の Rack サーバ事情について - willnet.in](http://willnet.in/156) :: unicorn or puma
- [Heroku wkhtmltopdfで日本語フォントを利用する - 130単位](http://d.hatena.ne.jp/deeeki/20120902/heroku_wkhtmltopdf_fonts)  
  > TTFフォントを ~/.fonts に入れておくだけ
- [『無料だとアプリを1日18時間しか稼働させられなかったのが、1アカウント内なら（複数アプリ合計で）24時間使えるようになってた』](https://twitter.com/sla/status/750405411568619520)
- [Heroku で SSL（https）を導入する方法（2016年7月 最新版！） \- sakagami memo](http://sakagami.hatenablog.com/entry/2016/07/10/161814)


## Setup

- [Sinatra + PostgreSQL + Unicorn な Web サーバーを Heroku に構築する ｜ Developers.IO](http://dev.classmethod.jp/server-side/ruby-on-rails/sinatra-postgresql-unicorn-on-heroku/)
```bash
$ git push heroku master
```

#### Ruby versions
- [Heroku Ruby Support | Heroku Dev Center](https://devcenter.heroku.com/articles/ruby-support)

#### Keep alive
- keyword: `HEROKU_URL`
- [無料でお手軽Cron！Google Apps Scriptを使ってみる。 - きじとら](http://kijtra.com/article/cron-by-google-apps-script/)
- [HerokuのDynoが寝ないようにする - Qiita](http://qiita.com/hanachin_/items/2f88f6079af0b35ed5e3)


## Create App

```bash
$ cd myapp
```

```bash
$ heroku apps:create myapp
```

#### リポジトリを Heroku App と紐づける
```bash
$ heroku git:remote --app APPNAME
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


## Tips

### Git remote
- [Heroku にある Git リポジトリを楽に remote に設定する - Qiita](http://qiita.com/ka_/items/2ad2826329abeb49dfa2)
```bash
$ heroku git:remote --app APPNAME
```

### Heroku Button

![Deploy](https://www.herokucdn.com/deploy/button.png)

要するに「$ heroku clone」的なイメージ。アプリ開発者はボタンを設置することでHeroku上での利用促進になる。利用者はワンクリックで自分のHerokuアカウントにデプロイできるようになる。
- [Heroku | Introducing Heroku Button](https://blog.heroku.com/archives/2014/8/7/heroku-button)
- [voting-badgeをHeroku Buttonに対応させました | Web Scratch](http://efcl.info/2014/08/08/heroku-button/)
- [Deploy to Heroku / Webアプリケーションのポータビリティ再び - naoyaのはてなダイアリー](http://d.hatena.ne.jp/naoya/20140809/1407556488)
