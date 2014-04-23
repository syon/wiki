## [gollum -- A wiki built on top of Git](https://github.com/gollum/gollum)

A simple, Git-powered wiki with a sweet API and local frontend.

### Features
* Markdown, MediaWiki, Textileなど大抵の記法で書ける。
* 基本的にgitリポジトリ一つで完結しており、MySQLなどのDBが不要で、簡単にprivate wikiを立ち上げられる。
* セットアップが非常に楽。
* gitで動いているので、バージョン管理や差分、コミットを遡ってrevertする、なんてこともWebのUIから簡単に操作できる。
* 全文検索も実装されている。
* ruby+sinatraで実装されているので、分かる人は拡張を簡単に書ける気がする。
* シンタックスハイライトが効く
* ファイルアップロード機能も一応ある（あんま重要視してない）
* 管理がGit任せなので、操作に慣れていると楽
* ほとんどそれだけしか機能が無いこと（ユーザ登録機能すら無いです）

### Setup

<pre>
$ mkdir mywiki
$ cd mywiki
$ git init
$ bundle init
(Gemfile) gem "gollum"
$ brew install icu4c
$ bundle install --path vendor/bundle
$ bundle exec gollum
</pre>

* [githubのwikiエンジン"gollum"の導入と細かい設定 - yukke::note](http://yukke.hateblo.jp/entry/2013/05/02/224859)
    * 数式を書く
    * 画像をはりつける
    * ヘッダやフッタなど
    * カスタマイズ
        * 画像のアップローダー
        * wikiに認証をつける
        * ヘッダーをつける
* [Github製wikiエンジン"Gollum"インストール - Qiita](http://qiita.com/urunru@github/items/d4708bca0b70009856ec)
    * "herokuでgollumを動かすことはできない。herokuのファイルシステムはRead onlyだから。"
    * [rake - Deploy Gollum wiki to Heroku - Stack Overflow](http://stackoverflow.com/questions/4047999/deploy-gollum-wiki-to-heroku)
* [gollumを使って個人用wikiをサーバに立てた | blog: takahiro okumura](http://blog.hifumi.info/2014/02/02/my-wiki-powered-by-gollum/)
* [GitベースのWiki gollumを使い始めた - Gaishimo](http://gaishimo.hatenablog.com/entry/2013/01/27/234300)
    * CentOS 5.9 (さくらVPS), Webサーバ: nginx 1.2.3

#### Error

##### インストール時にエラー発生

<pre>
***************************************************************************************
*********** icu required (brew install icu4c or apt-get install libicu-dev) ***********
***************************************************************************************
*** extconf.rb failed ***
Could not create Makefile due to some reason, probably lack of
necessary libraries and/or headers.  Check the mkmf.log file for more
details.  You may need configuration options.
</pre>

言われたとおり実行。Macなので：

<pre>
$ brew install icu4c
</pre>

Cygwinの場合:

<pre>
$ apt-cyg find icu
Searching for installable packages matching icu:
icu
icu-doc
libicu-devel
libicu38
libicu45
libicu48
ploticus
ploticus-common
ploticus-doc
sqlite3-icu

$ apt-cyg install libicu-devel
</pre>

##### 起動時にエラー発生
<pre>
Gollum::InvalidGitRepositoryError
</pre>
Gitリポジトリになってない。
<pre>
$ git init
</pre>
