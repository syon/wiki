### Setup
* [Sinatra + PostgreSQL + Unicorn な Web サーバーを Heroku に構築する ｜ Developers.IO](http://dev.classmethod.jp/server-side/ruby-on-rails/sinatra-postgresql-unicorn-on-heroku/)

<pre>
$ git push heroku master
</pre>

### PostgreSQL

作成対象のHerokuアプリディレクトリに移動

<pre>
$ cd myapp
</pre>

Dev Plan (FREE) でデータベースを作成

<pre>
$ heroku addons:add heroku-postgresql:dev
</pre>

config/database.yml の作成 ([※Heroku側は自動生成される](https://devcenter.heroku.com/articles/ruby-support#build-behavior))
<pre>
configディレクトリを作成し、database.yml (developmentのみ)を記述して配置する
</pre>

<pre>
.gitignore に database.yml を追加
</pre>

マイグレーション

<pre>
$ heroku run rake db:migrate
</pre>

初期データ投入 (db/seeds.rb)

<pre>
$ heroku run rake db:seed
</pre>

再起動

<pre>
$ heroku restart
</pre>
