#### → __[Ruby | Refills](http://syon.github.io/refills/ruby/)__

#### → __[Ruby-Gem](/Ruby-Gem/)__


## リファレンス

#### [逆引きRuby](http://www.namaraii.com/rubytips/)

逆引きRubyはRubyを使ってやりたい事から、その方法を調べられる逆引きのリファレンスです。

- [逆引きRuby - ディレクトリ](http://www.namaraii.com/rubytips/?%A5%C7%A5%A3%A5%EC%A5%AF%A5%C8%A5%EA=)  
Dirクラスによりディレクトリの作成、削除、ファイル一覧取得などを行うことができます。
- [逆引きRuby - 例外](http://www.namaraii.com/rubytips/?%E4%BE%8B%E5%A4%96)
- [Ruby Error Handling, Beyond the Basics](http://www.sitepoint.com/ruby-error-handling-beyond-basics/)

#### [Ruby · Styleguide](https://github.com/styleguide/ruby)
GitHubのRubyコーディング規約

#### [Awesome Ruby](https://github.com/Sdogruyol/awesome-ruby)
Ruby関連の厳選リンク集


### 本
- [Amazon.co.jp： Effective Ruby あなたのRubyをより輝かせる48の特別な方法: Peter J. Jones, arton, 長尾 高弘: 本](http://www.amazon.co.jp/dp/4798139823)
- [これからRubyを勉強する人が絶対読んでおきたい書籍9冊＋α | Find Job ! Startup](http://www.find-job.net/startup/ruby-books)
- [Rails で "とりあえず動くコード" を書けるようになった人が次に遭遇する問題とそれを解決してくれる本まとめ - 彼女からは、おいちゃんと呼ばれています](http://blog.inouetakuya.info/entry/2014/06/08/194015)


## まとめ

- [2013年新学期にRubyを始めるエンジニアが読むべきサイトまとめ - satooshi@blog](http://blog.satooshi.jp/blog/2013/04/08/before-you-get-started-ruby-programming/)

### 記法

- [知って得する！５５のRubyのトリビアな記法](http://melborne.github.io/2013/03/04/ruby-trivias-you-should-know-4/)
- [Rubyで使われる記号の意味（正規表現の複雑な記号は除く）](http://docs.ruby-lang.org/ja/1.8.7/doc/symref.html)
- [Rubyでrbファイルをrequireするときはドットを打つと良さそう - アインシュタインの電話番号](http://blog.ruedap.com/2011/05/31/ruby-require-load-path)  
※Ruby 1.9.2ではロードパスにカレントディレクトリが含まれなくなった  
`require './hoge.rb'`
    - [Ruby1.9.2以降でrequireする際の注意点 - Qiita](http://qiita.com/nekogeruge_987/items/2d18f388219597c75e05)  
      `require_relative 'app.rb'`
- [Ruby/演算子 - BugbearR's Wiki](http://www.bugbearr.jp/?Ruby%2F%E6%BC%94%E7%AE%97%E5%AD%90)
- [ビット反転演算子（~）でindexOfの判定 - hokaccha.hamalog v2](http://d.hatena.ne.jp/hokaccha/20110718/1310941427)  
チルダはビット反転演算子で、整数をビット反転させると符号を反転させて1引いた数になる。  
つまり-1のときだけ0になるので、indexOfと組み合わせて使うことができる。
- [RubyのFile.expand_path('相対パス', __FILE__)の意味 - maeharinの日記](http://d.hatena.ne.jp/maeharin/20130104/p1)
- [Procを制する者がRubyを制す（嘘）](http://melborne.github.io/2014/04/28/proc-is-the-path-to-understand-ruby/)  
  `Method#call`, `& + call == yield`, `Proc, lambda, ->`
- [Rubyにおけるスコープのおはなし](http://melborne.github.io/2013/09/24/rubys-scope/)  
  インスタンス変数(`@`)、クラス変数(`@@`)、グローバル変数(`$`)
- [Rubyのモジュールメソッドの作り方 - Qiita](http://qiita.com/ionis_h/items/5f26248ea4e154cce424)

### Books

- [Rails で "とりあえず動くコード" を書けるようになった人が次に遭遇する問題とそれを解決してくれる本まとめ - 彼女からは、おいちゃんと呼ばれています](http://blog.inouetakuya.info/entry/2014/06/08/194015)


## Install Ruby

### Install rbenv on Mac

- [Ruby - Homebrewのインストールとrbenvのインストール Mac編 - Qiita](http://qiita.com/issobero/items/e0443b79da117ed48294)  
  `$ rbenv init`も必要 https://github.com/sstephenson/rbenv#how-rbenv-hooks-into-your-shell

### Install uru on Windows

- [pikの替わりにuru～windowsで複数バージョンのrubyを切り替える～ - Qiita](http://qiita.com/tikkss@github/items/a70af204d5fb3612bb39)

### Install rbenv on Ubuntu

```bash
$ sudo apt-get update
$ sudo apt-get dist-upgrade
$ sudo apt-get install ssh git build-essential libssl-dev

$ git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
$ echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshrc
$ echo 'eval "$(rbenv init -)"' >> ~/.zshrc

$ git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

$ rbenv install 2.0.0-p353
$ rbenv global 2.0.0-p353
$ rbenv rehash
```
- https://github.com/sstephenson/rbenv#installation
    - `rbenv install` needs [ruby-build](https://github.com/sstephenson/ruby-build#readme)

#### Ruby 1.9.3 のインストールでエラー発生

```bash
checking for gcc... /usr/bin/gcc-4.2
checking whether the C compiler works... no
configure: error: in `/tmp/ruby-build.20140417163730.6400/yaml-0.1.6':
configure: error: C compiler cannot create executables
```

`gcc-4.2`が見つからないのが原因。`$ gcc -v`を見ると 4.6.3 となっていた。 4.2 のインストール方法を探しても見つからないのでシンボリックリンクを張って対処。

```bash
$ sudo ln -sf /usr/bin/gcc /usr/bin/gcc-4.2
```

### Update rbenv

```bash
$ cd ~/.rbenv
$ git pull origin master
$ cd ~/.rbenv/plugins/ruby-build
$ git pull origin master
```
via - [rbenvとruby-buildでRuby環境を最新に保つ](https://gist.github.com/mochiz/4736183)

### 新規プロジェクト作成時

- [bundlerでgemをプロジェクトごとに管理する ｜ Developers.IO](http://dev.classmethod.jp/server-side/language/bundler-gem-management/)
    - [Windows Proxy環境でbundle installでのエラー回避 ? Ryu's Blog](http://www.ryuslab.com/archives/179)

<pre>
$ cd %ProjectDir%
$ bundle init
Gemfileに追記 gem 'gemname'
$ set http_proxy=http://localhost:8080
$ bundle install --path vendor/bundle
$ bundle exec ruby sample.rb
</pre>

- [Proxy経由のgem install - 京の路](http://blog.matake.jp/archives/proxygem_install)


## 開発環境
- [Rubyプログラミングが快適になるVim環境を0から構築する - Qiita](http://qiita.com/mogulla3/items/42a7f6c73fa4a90b1df3)

#### 環境変数

- [Ruby - Dotenv使ってみた - Qiita](http://qiita.com/ogawatti/items/e1e612b793a3d51978cc)


## Rake
- [ファイルを扱う作業をRakeで便利にしよう！（パート1：概要編） - るびくる＆RBのRubyプログラミング大作戦！ - rubicle.net](http://rubicle.net/rubicle_talk_1-1.html)
- [ファイルを扱う作業をRakeで便利にしよう！（パート2：実践編1） - るびくる＆RBのRubyプログラミング大作戦！ - rubicle.net](http://rubicle.net/rubicle_talk_1-2.html)


## irb

"Interactive Ruby" ― 対話型 Ruby 処理系

```bash
$ irb
```

exit で終了

- [configuration - IRb: how to start an interactive ruby session with pre-loaded classes - Stack Overflow](http://stackoverflow.com/questions/2652514/irb-how-to-start-an-interactive-ruby-session-with-pre-loaded-classes)  
  ライブラリを自動読み込みする
```bash
$ irb -r 'myclass.rb'
```

- [irb を快適に使うための Tips - すがブロ](http://sugamasao.hatenablog.com/entry/20091207/1260143043)
- [configuration - IRb: how to start an interactive ruby session with pre-loaded classes - Stack Overflow](http://stackoverflow.com/questions/2652514/irb-how-to-start-an-interactive-ruby-session-with-pre-loaded-classes)

### Pry
#### [Pry - an IRB alternative and runtime developer console](http://pryrepl.org/)

- [Rubyistよ、irbを捨ててPryを使おう - TIM Labs](http://labs.timedia.co.jp/2011/12/rubyist-should-use-pry.html)
- [Ruby - Pryコンソールのプロンプトをカラフルかつ便利にする - Qiita](http://qiita.com/okuramasafumi/items/900286cd4f07c1bbbb5d)
- [Ruby - awesome_print を pry の表示のデフォルトに使う - Qiita](http://qiita.com/Linda_pp/items/d75d7c3953faa34a1f0e)


## Ruby技術者認定試験
### [Rubyアソシエーション: Ruby技術者認定試験制度](http://www.ruby.or.jp/ja/certification/examination/)
- [Ruby技術者認定試験Silverに卒業単位やばい学生だけど合格できたお話【試験合格記】 | メモ帳代わりのブログ](http://www.absolute-keitarou.net/blog/?p=785)
- [Rubyアソシエーション: Ruby技術者認定試験再受験無料キャンペーン](http://www.ruby.or.jp/ja/news/20141105.html)
