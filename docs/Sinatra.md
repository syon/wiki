### [Sinatra: README (Japanese)](http://www.sinatrarb.com/intro-jp.html)

- [昨今の自分用Webアプリケーションひな形 - naoyaのはてなダイアリー](http://d.hatena.ne.jp/naoya/20130503/1367581629)  
  bower & sinatra & slim + sass + coffee

- [Sinatra Pattern 20130415](http://www.slideshare.net/sonots/sinatra-pattern-20130415)  
  ちっちゃくはじめておっきく育てるSinatraアプリの作り方

- [sinatra ですぐにアプリケーションの実装に入れるようにするための準備 - Studio3104::BLOG.new]  (http://studio3104.hatenablog.com/entry/2014/11/04/012457)  
  Sinatra + slim + sass + coffee + bower + grunt + foreman

## Reference

- [Ruby - Sinatraの使い方あれこれ - Qiita](http://qiita.com/weed/items/7c83a795e37bdf52cfef)
    - 異なるルートで同じ対応をしたい
    - RESTリクエストのパラメータを受け取りたい
    - 正規表現を用いたルート
    - 別のルートへリダイレクトする
    - 静的なファイルを見せる
    - Erbファイルを見せる
    - Erbファイルに変数を渡す
    - 事前・事後に処理したいことがあるとき
    - 404 Not Foundのカスタマイズ
    - 500 Internal Server Errorのカスタマイズ
    - Session管理
    - Cookieの利用
    - ファイル添付
- [チュートリアル - sinatraへ簡易アカウント管理機能を追加する - Qiita](http://qiita.com/rhzk/items/d908fb6ec7fb4aa15fe3)
- [Sinatra＋ActiveRecord＋SQLite3で，軽量なWeb-DB連携例 | tamo's blog](http://tamosblog.wordpress.com/2012/10/26/sinatra/)

#### Rack
- [そうだRack作ろう。](http://www.slideshare.net/kazumax1218/rack-37493113)  
  Rackとは何か、Rackアプリ/ミドルウェア
- [Rack::Session::Cookieを使う - 橋本詳解](http://d.hatena.ne.jp/shokai/20110324/1300999147)

### Heroku
- [Heroku](/Heroku/)

## Getting Started

### Install
```bash
set http_proxy=http://localhost:8080
gem install sinatra
gem install sinatra-contrib
```
※sinatra-contrib: for 'sinatra/reloader'(自動リロード)

### myapp.rb
```ruby
require 'sinatra'
require 'sinatra/reloader'

get '/' do
  'Hello world!'
end
```
```bash
ruby myapp.rb
```
http://localhost:4567/

### 静的ファイル
- [Sinatra: README (Japanese) #静的ファイル](http://www.sinatrarb.com/intro-jp.html#%E9%9D%99%E7%9A%84%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB)
```bash
app
├─public
│  ├─css
│  ├─fonts
│  ├─img
│  └─js
```

### ビュー / テンプレート
- [Sinatra: README (Japanese)](http://www.sinatrarb.com/intro-jp.html#%E3%83%93%E3%83%A5%E3%83%BC%20/%20%E3%83%86%E3%83%B3%E3%83%97%E3%83%AC%E3%83%BC%E3%83%88)
```bash
app
└─views
    │  index.erb
    │  layout.erb
    │
    └─subdir
            index.erb
```

- [Sinatraが使いやすいので勝手に宣伝してみる - 射撃しつつ前転](http://d.hatena.ne.jp/tkng/20090701/1246468007)  
ディレクトリ階層を作りたい場合は
```ruby
get '/subdir' do
  erb :"subdir/index"
end
```

### ConfigFile
- [Sinatra::ConfigFile (part of Sinatra::Contrib)](http://www.sinatrarb.com/contrib/config_file.html)

config.yml
```yaml
greeting: Welcome
```
```ruby
require "sinatra"
require "sinatra/config_file"

config_file 'path/to/config.yml'

get '/' do
  @greeting = settings.greeting
  haml :index
end
```

## Haml

#### [HTML2Haml | Convert HTML Snippets to Haml](http://html2haml.heroku.com/)

#### [5分で分かるHaml](http://unoh.github.io/2009/05/26/5haml.html)
```haml
/ HTMLのコメント

-# hamlのコメント
```

#### [Sinatra を使って Haml で作成したテンプレートに変数を埋め込む - 酔いどれコード](http://d.hatena.ne.jp/yamamucho/20090817/1250516677)
- タグの後に = を付けない場合
    - 変数名をそのまま記述しても変数として認識されない
    - 変数名を #{ } で囲むと変数として認識される
    - タグ名以降は "" で囲まれた文字列と同じ扱い？
- タグの後に = を付ける場合
    - リテラルは必ず " や ' で囲む必要がある
    - カンマ区切りにしてもOK
    - = 以降はすべて変数として認識されている？受け取る方は可変引数に対応しているからカンマ区切りでもOKと（調べてない）。
- 要素の指定は内容よりも前に書く
- - を付けると Ruby のコードを埋め込むことができる

#### views/layout.haml

<pre>
%html
  %head
    %title
      sinatra
  %body
    = yield
</pre>

#### ページごとにタイトルを変える

app.rb
<pre>
require "sinatra/content_for"
</pre>

layout.haml
<pre>
%html
  %head
    %title
      = yield_content(:title)
</pre>

somepage.haml
<pre>
- content_for :title do "This is title" end
</pre>
<pre>
- content_for :title do
  = "This is title"
</pre>

## Slim

- [Slim - A Fast, Lightweight Template Engine for Ruby](http://slim-lang.com/)
- [速習テンプレートSlim(HTML作成編) - Qiita](http://qiita.com/yterajima/items/53fd0387279510ff082a)
- [HTML2slim](https://html2slim.herokuapp.com/)
- [slim2HTML](http://slim2html.raving.systems/)


## ActiveRecord
- → __[ActiveRecord](/ActiveRecord/)__


## 認証

- [チュートリアル - sinatraへ簡易アカウント管理機能を追加する - Qiita](http://qiita.com/kaz3439/items/d908fb6ec7fb4aa15fe3)  
  ログインの実装サンプル。ユーザ認証はメルアドとパスワード。

## Unicorn
- [Design Recipe 別館 Blog - Rack アプリケーション向けの HTTP サーバ Unicorn の基本操作](http://blog.designrecipe.jp/2011/07/30/unicorn/)

#### Unicornの停止
```bash
$ kill -QUIT `cat unicorn.pid`
```
```bash
$ ps -ef | grep unicorn | grep -v grep
hoge      7299     1  0 22:13 ?        00:00:04 unicorn master -c unicorn.conf -D
hoge      7303  7299  0 22:13 ?        00:00:03 unicorn worker[0] -c unicorn.conf -D
hoge      7306  7299  0 22:13 ?        00:00:03 unicorn worker[1] -c unicorn.conf -D

$ kill -QUIT 7299
```

## TIPS

- [SinatraでJSONを返す](http://d.hatena.ne.jp/rightgo09_ruby/20130828/p1)
- [Sinatraのハンドラ内でem-http-requestを使う - daily gimite](http://d.hatena.ne.jp/Gimite/20101017/1287298216)
- [Fiberを使ってem-http-requestとかを同期的に呼び出す - daily gimite](http://d.hatena.ne.jp/Gimite/20110514/1305374959)
- [Sinatraがデフォルトでは外部から繋がらなくなってたよ - Qiita](http://qiita.com/u1_fukui/items/b86b21f6ed39f4c10d5d)
    - 実行オプションを使う
```bash
$ bundle exec ruby hoge.rb -e production
```
    - rubyのコードの中で設定する
```ruby
set :environment, :production
```

- [Ruby - sinatraをwindowsでお手軽に起動したらwebrickが遅い - Qiita](http://qiita.com/k-ta-yamada/items/2a484e054d31f616191d)

- [ruby - How to parse JSON request body in Sinatra just once and expose it to all routes? - Stack Overflow](http://stackoverflow.com/questions/17049569/how-to-parse-json-request-body-in-sinatra-just-once-and-expose-it-to-all-routes)

#### Singleton
- [ruby - best/most elegant way to share objects between a stack of rack mounted apps/middlewares? - Stack Overflow](http://stackoverflow.com/questions/5517753/best-most-elegant-way-to-share-objects-between-a-stack-of-rack-mounted-apps-midd)
```ruby
class SharedObject
  include Singleton

  def test
    @test ||= "hello world"
  end
end

class App1 < Sinatra::Base
  get '/' do
    SharedObject.instance.test
  end
end
```
- [Ruby Singleton attr_accessor - Stack Overflow](http://stackoverflow.com/questions/17549320/ruby-singleton-attr-accessor)
```ruby
class Foo
  singleton_class.class_eval{attr_accessor :bar}
end
```
