---
slug: ActiveRecord
title: ActiveRecord
layout: page.jade
---

## ActiveRecord

- [ActiveRecordの関連のすべて ー StoneDot の Ruby on Rails 講座](http://www.stonedot.com/lecture6.html)
- [Sinatra + ActiveRecord + MySQL で簡易アプリつくってみる](http://www.vincentina.net/?p=4782)

### Rakefile

```ruby
require 'sinatra/activerecord'
require 'sinatra/activerecord/rake'
```

```bash
bundle exec rake -T | cat
rake db:create              # Creates the database from DATABASE_URL or config/database.yml for the current RAILS_ENV (use db:create:all to create all databases in the config)
rake db:create_migration    # Create a migration (parameters: NAME, VERSION)
rake db:drop                # Drops the database from DATABASE_URL or config/database.yml for the current RAILS_ENV (use db:drop:all to drop all databases in the config)
rake db:fixtures:load       # Load fixtures into the current environment's database
rake db:migrate             # Migrate the database (options: VERSION=x, VERBOSE=false, SCOPE=blog)
rake db:migrate:status      # Display status of migrations
rake db:rollback            # Rolls the schema back to the previous version (specify steps w/ STEP=n)
rake db:schema:cache:clear  # Clear a db/schema_cache.dump file
rake db:schema:cache:dump   # Create a db/schema_cache.dump file
rake db:schema:dump         # Create a db/schema.rb file that is portable against any DB supported by AR
rake db:schema:load         # Load a schema.rb file into the database
rake db:seed                # Load the seed data from db/seeds.rb
rake db:setup               # Create the database, load the schema, and initialize with the seed data (use db:reset to also drop the database first)
rake db:structure:dump      # Dump the database structure to db/structure.sql
rake db:structure:load      # Recreate the databases from the structure.sql file
rake db:version             # Retrieves the current schema version number
```

### モデル作成
- [SinatraからActiveRecord 3を使う(1) マイグレーション - アインシュタインの電話番号](http://blog.ruedap.com/2011/04/16/ruby-sinatra-active-record-3-migrate)
    - `Rakefile`を作成して、`rake`を使ってテーブル作成（マイグレーション）する
        1. `$ bundle exec rake db:create_migration NAME=create_users`
        1. `db/migrate/20140628000729_create_users.rb`が生成される
        1. メソッド内に必要なカラムを書き足していく
        1. `$ bundle exec rake db:migrate`
- [Ruby - 非Rails AppでActiveRecord::Migrationを使う + Rakeでバージョン管理する - Qiita](http://qiita.com/foloinfo/items/6ecfe3c5fd1b56f1dceb)
    - `database.yml`内でERBを利用しているとき`YAML.load(ERB.new(File.read('config/database.yml')).result)`とする

### 初期データ投入
- `$ bundle exec rake db:seed`
    - foreman からは`config.ru`を呼び出すが、rake からは`Rakefile`を呼び出す
    - DB接続やModel記述を`config.ru`に書くと、`Rakefile`から require できなかった
    - 記述一元管理のために`ar_env.rb`を作成、そちらに記述を移す
    - `config.ru`と`Rakefile`に`require './ar_env'`を追記
    - 参考: [ruby on rails - How do I get a custom Rake task to run in Sinatra? - Stack Overflow](http://stackoverflow.com/questions/20081457/how-do-i-get-a-custom-rake-task-to-run-in-sinatra)
