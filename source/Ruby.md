## リファレンス

#### [逆引きRuby](http://www.namaraii.com/rubytips/)

逆引きRubyはRubyを使ってやりたい事から、その方法を調べられる逆引きのリファレンスです。

- [逆引きRuby - ディレクトリ](http://www.namaraii.com/rubytips/?%A5%C7%A5%A3%A5%EC%A5%AF%A5%C8%A5%EA=)  
Dirクラスによりディレクトリの作成、削除、ファイル一覧取得などを行うことができます。

### まとめ

- [2013年新学期にRubyを始めるエンジニアが読むべきサイトまとめ - satooshi@blog](http://blog.satooshi.jp/blog/2013/04/08/before-you-get-started-ruby-programming/)

#### 記法

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

## Install Ruby

### rbenv on Mac

- [Ruby - Homebrewのインストールとrbenvのインストール Mac編 - Qiita](http://qiita.com/issobero/items/e0443b79da117ed48294)  
  `$ rbenv init`も必要 https://github.com/sstephenson/rbenv#how-rbenv-hooks-into-your-shell

### rbenv on Ubuntu


```bash
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
```
via - [Dockerをインストールする - Qiita](http://qiita.com/sudahiroshi/items/2f430cc61878c4c70119)

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

## Gem
- [[Ruby-Gem]]

## Rake
- [ファイルを扱う作業をRakeで便利にしよう！（パート1：概要編） - るびくる＆RBのRubyプログラミング大作戦！ - rubicle.net](http://rubicle.net/rubicle_talk_1-1.html)
- [ファイルを扱う作業をRakeで便利にしよう！（パート2：実践編1） - るびくる＆RBのRubyプログラミング大作戦！ - rubicle.net](http://rubicle.net/rubicle_talk_1-2.html)

## TIPS

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
