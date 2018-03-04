#### [Static Site Generators](https://staticsitegenerators.net/)
The definitive listing of Static Site Generators


## [Jekyll](http://jekyllrb.com)
> Transform your plain text into static websites and blogs.


## [Hexo](http://hexo.io)
> A fast, simple & powerful blog framework

ブログ向け。

- [所要時間3分!? Github PagesとHEXOで爆速ブログ構築してみよう！ | 株式会社LIG](http://liginc.co.jp/web/programming/server/104594)


## Middleman
- → __[Middleman](/wiki/middleman/)__


## [Metalsmith](http://www.metalsmith.io)
An extremely simple, pluggable static site generator.

- → __[Metalsmith | Refills](https://syon.github.io/refills/metalsmith/)__


## [Harp](http://harpjs.com)
> The static web server with built-in preprocessing.

> Harp serves Jade, Markdown, EJS, CoffeeScript, Sass, LESS and Stylus as HTML, CSS & JavaScript—no configuration necessary.

イマドキのプリコンパイルが必要なやつをそのまま書くだけでファイル構成そのままに変換・配信するやつ。SPAでbrowserifyみたいな凝ったことせずにサクッと作る用かな。

- Automatic preprocessing
    - 自動プリコンパイル
- Preprocessors are built-in
    - Markdown, Jade, EJS, LESS, Stylus, Sass and CoffeeScript
- The beloved Layout/Partial paradigm
    - `_layout.jade`が使える。ディレクトリを変えれば複数用意できる。
    - `<%- partial("_nav") %>`が使える。
- All inside a fast, lightweight web server
    - Webサーバ付き
- Flexible, custom metadata
    - `_data.json`を使ってeachなどができる
- Compile and deploy
    - `$ compile`で`www`ディレクトリに出力できる


## Documentation

[docsify](https://docsify.js.org/#/)
: A magical documentation site generator.
