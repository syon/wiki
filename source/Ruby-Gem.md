## Gem - Tips

- [1人Webサービス開発で使っているGemfileそのまま公開 - Qiita](http://qiita.com/s3pw/items/a0c77cf3d9592e9e1bad)
- [rbenvとruby-buildでRuby環境を最新に保つ](https://gist.github.com/mochiz/4736183)
- [gem update --system したら gem update bundler もね！ - tacamy.blog](http://tacamy.hatenablog.com/entry/2013/03/31/230553)
```bash
$ gem update --system
$ gem update bundler
```

## ~/.gemrc

- [Ruby - gemrcの--no-riと--no-rdoc、deprecatedなoptionなのでみなおしたほうがいいかもですよ - Qiita](http://qiita.com/kei_q/items/d13235157fcfc435489d)
```ruby
install: --no-document
update: --no-document
```

## Gem - スクレイピング

### Nokogiri

CSSセレクタでDOMにアクセスできる。

- [Ruby - Nokogiriでスクレイピング - Qiita](http://qiita.com/w650/items/e663fa2430145c456c4d)
- [スクレイピングのためのNokogiri利用メモ - それはそれ。これはこれ。](http://d.hatena.ne.jp/otn/20090509/p1)
- [Nokogiri を使った Rubyスクレイピング [初心者向けチュートリアル] - 酒と泪とRubyとRailsと](http://morizyun.github.io/blog/ruby-nokogiri-scraping-tutorial/)
- [Ruby製の構文解析ツール、Nokogiriの使い方 with Xpath - プログラマになりたい](http://blog.takuros.net/entry/2014/04/15/070434)

### mechanize

ウェブサイトのアクセスを自動化。スクレイピング（サイトアクセスと収集）。

- [mechanize | RubyGems.org | your community gem host](http://rubygems.org/gems/mechanize)
- [RubyのMechanizeを解説 for 1.0.0 - きたももんががきたん。](http://d.hatena.ne.jp/kitamomonga/20081209/kaisetsu_for_ver_0_9_ruby_www_mechanize)
- [Ruby Scraping - Mechanize](http://route477.net/rubyscraping/?Mechanize)

### watir

Rubyでブラウザを操作。ブラウザ(chromeやie、firefoxなど)を使ってのテスト自動化や、javascriptの実行結果を取得するといったことが可能。

- [Rubyでブラウザを操作できるGem watir - 酒と泪とRubyとRailsと](http://morizyun.github.io/blog/watir-chrome-ruby-browser-cotrol/)

## Gem - スクリーンショット

### win32screenshot

Capture Screenshots on Windows with Ruby

- [jarmo/win32screenshot](https://github.com/jarmo/win32screenshot)

## Gem - データベース

### ruby-oci8

ruby-oci8 はOracle Database用の ruby インターフェースです。Oracle8 以降の全 Oracle バージョン(Oracle XE, Oracle Instant Client も含む)で使用可能です。

- [ruby-oci8 - トップページ](http://ruby-oci8.rubyforge.org/ja/)
- [ruby-oci8 | RubyGems.org | your community gem host](http://rubygems.org/gems/ruby-oci8)
- [ruby-oci8 2.0をRuby1.9(mswin32)で使ってみる - Kazzzの日記](http://d.hatena.ne.jp/Kazzz/20090314/p1)

## RubyGemsに登録

- [Bundlerを使ったGem作成メモ (自分用) - ただのにっき(2012-02-18)](http://sho.tdiary.net/20120218.html#p02)