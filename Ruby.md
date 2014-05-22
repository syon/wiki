### リファレンス

#### [逆引きRuby](http://www.namaraii.com/rubytips/)

逆引きRubyはRubyを使ってやりたい事から、その方法を調べられる逆引きのリファレンスです。

- [逆引きRuby - ディレクトリ](http://www.namaraii.com/rubytips/?%A5%C7%A5%A3%A5%EC%A5%AF%A5%C8%A5%EA=)  
Dirクラスによりディレクトリの作成、削除、ファイル一覧取得などを行うことができます。

#### 記法

- [知って得する！５５のRubyのトリビアな記法](http://melborne.github.io/2013/03/04/ruby-trivias-you-should-know-4/)

- [Rubyでrbファイルをrequireするときはドットを打つと良さそう - アインシュタインの電話番号](http://blog.ruedap.com/2011/05/31/ruby-require-load-path)  
※Ruby 1.9.2ではロードパスにカレントディレクトリが含まれなくなった  
`require './hoge.rb'`

- [Ruby/演算子 - BugbearR's Wiki](http://www.bugbearr.jp/?Ruby%2F%E6%BC%94%E7%AE%97%E5%AD%90)

- [ビット反転演算子（~）でindexOfの判定 - hokaccha.hamalog v2](http://d.hatena.ne.jp/hokaccha/20110718/1310941427)  
チルダはビット反転演算子で、整数をビット反転させると符号を反転させて1引いた数になる。  
つまり-1のときだけ0になるので、indexOfと組み合わせて使うことができる。

### インストール(rbenv on Mac)

- [Ruby - Homebrewのインストールとrbenvのインストール Mac編 - Qiita](http://qiita.com/issobero/items/e0443b79da117ed48294)  
  `$ rbenv init`も必要 https://github.com/sstephenson/rbenv#how-rbenv-hooks-into-your-shell

### インストール(rbenv on Ubuntu)

- [Dockerをインストールする - Qiita](http://qiita.com/sudahiroshi/items/2f430cc61878c4c70119)

<pre>
$ sudo apt-get update
$ sudo apt-get dist-upgrade
$ sudo apt-get install ssh git build-essential libssl-dev
$ git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
$ echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
$ echo 'eval "$(rbenv init -)"' >> ~/.bashrc
$ . .bashrc
$ git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
$ rbenv install 2.0.0-p353
$ rbenv global 2.0.0-p353
$ rbenv rehash
</pre>

Ruby 1.9.3 のインストールでエラー発生

<pre>
checking for gcc... /usr/bin/gcc-4.2
checking whether the C compiler works... no
configure: error: in `/tmp/ruby-build.20140417163730.6400/yaml-0.1.6':
configure: error: C compiler cannot create executables
</pre>

`gcc-4.2`が見つからないのが原因。`$ gcc -v`を見ると 4.6.3 となっていた。 4.2 のインストール方法を探しても見つからないのでシンボリックリンクを張って対処。

<pre>
$ sudo ln -sf /usr/bin/gcc /usr/bin/gcc-4.2
</pre>

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

### Rake
- [ファイルを扱う作業をRakeで便利にしよう！（パート1：概要編） - るびくる＆RBのRubyプログラミング大作戦！ - rubicle.net](http://rubicle.net/rubicle_talk_1-1.html)
- [ファイルを扱う作業をRakeで便利にしよう！（パート2：実践編1） - るびくる＆RBのRubyプログラミング大作戦！ - rubicle.net](http://rubicle.net/rubicle_talk_1-2.html)

## Gem

#### Gem - 参考

- [1人Webサービス開発で使っているGemfileそのまま公開 - Qiita](http://qiita.com/s3pw/items/a0c77cf3d9592e9e1bad)
- [rbenvとruby-buildでRuby環境を最新に保つ](https://gist.github.com/mochiz/4736183)

#### ~/.gemrc

- [Ruby - gemrcの--no-riと--no-rdoc、deprecatedなoptionなのでみなおしたほうがいいかもですよ - Qiita](http://qiita.com/kei_q/items/d13235157fcfc435489d)

```ruby
install: --no-document
update: --no-document
```

#### Gem - スクレイピング

##### Nokogiri

CSSセレクタでDOMにアクセスできる。

- [Ruby - Nokogiriでスクレイピング - Qiita](http://qiita.com/w650/items/e663fa2430145c456c4d)
- [スクレイピングのためのNokogiri利用メモ - それはそれ。これはこれ。](http://d.hatena.ne.jp/otn/20090509/p1)
- [Nokogiri を使った Rubyスクレイピング [初心者向けチュートリアル] - 酒と泪とRubyとRailsと](http://morizyun.github.io/blog/ruby-nokogiri-scraping-tutorial/)

##### mechanize

ウェブサイトのアクセスを自動化。スクレイピング（サイトアクセスと収集）。

- [mechanize | RubyGems.org | your community gem host](http://rubygems.org/gems/mechanize)
- [RubyのMechanizeを解説 for 1.0.0 - きたももんががきたん。](http://d.hatena.ne.jp/kitamomonga/20081209/kaisetsu_for_ver_0_9_ruby_www_mechanize)
- [Ruby Scraping - Mechanize](http://route477.net/rubyscraping/?Mechanize)

##### watir

Rubyでブラウザを操作。ブラウザ(chromeやie、firefoxなど)を使ってのテスト自動化や、javascriptの実行結果を取得するといったことが可能。

- [Rubyでブラウザを操作できるGem watir - 酒と泪とRubyとRailsと](http://morizyun.github.io/blog/watir-chrome-ruby-browser-cotrol/)

#### Gem - スクリーンショット

##### win32screenshot

Capture Screenshots on Windows with Ruby

- [jarmo/win32screenshot](https://github.com/jarmo/win32screenshot)

#### Gem - データベース

##### ruby-oci8

ruby-oci8 はOracle Database用の ruby インターフェースです。Oracle8 以降の全 Oracle バージョン(Oracle XE, Oracle Instant Client も含む)で使用可能です。

- [ruby-oci8 - トップページ](http://ruby-oci8.rubyforge.org/ja/)
- [ruby-oci8 | RubyGems.org | your community gem host](http://rubygems.org/gems/ruby-oci8)
- [ruby-oci8 2.0をRuby1.9(mswin32)で使ってみる - Kazzzの日記](http://d.hatena.ne.jp/Kazzz/20090314/p1)

#### RubyGemsに登録

- [Bundlerを使ったGem作成メモ (自分用) - ただのにっき(2012-02-18)](http://sho.tdiary.net/20120218.html#p02)

### TIPS

#### 対話型 Ruby 処理系の起動

irb: "Interactive Ruby"

<pre>
$ irb
</pre>

exit で終了

#### コマンドライン引数

*[Rubyメモ - コマンドライン引数](http://www2.atwiki.jp/kmo2/pages/16.html)

<pre>
puts ARGV[0]
</pre>

#### ファイル出力

<pre>
# r:読込 w:上書 a:追記
open("log.txt", "a"){|f| f.write("文字列")}
</pre>

#### メソッド一覧

<pre>
require 'pp'
pp [].methods.sort
</pre>

#### ブロックコメント

<pre>
=begin
  :
  :
=end
</pre>

### Rubyワンライナー

- [Rubyワンライナー入門 - maeharinの日記](http://d.hatena.ne.jp/maeharin/20130113/ruby_oneliner)

### ワンライナー基礎

"-e": 一番基本的なオプション。スクリプトを実行する。（ちなみに他のオプションと組み合わせる時は必ず最後に記載する）

<pre>
$ ruby -e 'puts "hoge"'
</pre>

#### Windowsの環境変数Pathを改行して表示

<pre>
echo %path% | ruby -F; -ane 'puts $F'
</pre>

`echo %path%`で出力される内容を、rubyコマンドの引数として渡し、`-n`オプションによって行ごとに処理をループする。ループは Kernel.#gets により組込変数`$_`に格納される。`echo %path%`の場合は`;`区切りの1行文字列のため、ループは1回となる。次に、`-a`オプションによってループの先頭で自動的に $F = $_.split が実行され、結果の格納された`$F`を puts で出力している。splitの区切り文字はデフォルトで半角スペースのようだが、オプション`-F;`で`;`を区切り文字に指定している。
