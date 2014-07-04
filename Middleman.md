[[middleman.png|align=center]]

### [Middleman: 効率的な作業を可能にする Ruby 製の静的サイト生成ツール](http://middlemanapp.com/jp/)

## Features
- layout、template、partialでページが構成され、共通部分をまとめることができる。
- デフォルト言語はERBとし、変数やループ、条件分岐などRubyの文法が使える。
- ERBの他、Haml、Slim、Sass、Less、Stylus、CoffeeScript、Markdownなどの言語が使える。
- LiveReloadで自動コンパイルできる。
- link_toやstylesheet_link_tagなどRailsのTemplate Helpersが使える。
- Asset PipelineでJavascriptやCSSの依存ファイルをrequireできる。
- JavascriptやCSSをminify、gzipなどパフォーマンスの最適化ができる。

### Jekyllとの違い
- Middleman の方が優れている点は、 Asset Pipeline や Template Helpers などの便利な機能を利用可能
- Jekyll の方が有利な点としては、 GitHub pages が使えるためデプロイが楽

## Publish

### Middleman on Travis CI + GitHub Pages

#### [GitHub Pages + Middleman + Travis CI の構築手順 - X X X](http://syonx.hatenablog.com/entry/2014/06/29/185525)
- [Middleman で作った web サイトを Travis + GitHub pages でお手軽に運用する - tricknotesのぼうけんのしょ](http://tricknotes.hateblo.jp/entry/2013/06/17/020229)
    - Travis でビルドする
    - Travis で commit を作成する
    - Travis から GitHub pages に push する
- [ブログをJekyllからmiddlemanに移行してTravis CIでGitHub Pagesにデプロイするようにした - Webtech Walker](http://webtech-walker.com/archive/2013/08/jekyll_to_middleman.html)

### Middleman on Heroku
- [[ Middleman で超速プロトタイピング ] #02 Middleman の便利機能 7 選 ｜ Developers.IO](http://dev.classmethod.jp/tool/middleman-supersonic-02/)
    - テンプレート - レイアウトを無効にする
    - ローカルデータ - データの外部ファイル化
    - 動的にページを作る
    - LiveReload
    - サイトマップ
    - ディレクトリインデックス
    - アセットパイプライン
        - ファイルの連結機能
        - Bootstrap を取り込んでみる
    - ファイルサイズの最適化 - ミニファイ
- [Middleman + Slim + Herokuでブログをつくりました - ROCHAS](http://rochas.cc/blog/2013/11/19/middleman-heroku.html)
    - Blogの設定をする
    - LiveReloadを使う
    - Slimでテンプレートを書く
    - RedcarpetでMarkdownを書く
    - Middleman-Syntaxでソースコードをフォーマットする
    - Middleman::Autoprefixerで適切なベンダープリフィクスを付与
    - minify、gzipでパフォーマンスの最適化
- [MiddlemanをHerokuで公開して独自ドメインにリダイレクトする - ROCHAS](http://rochas.cc/blog/2014/01/07/heroku-redirect.html)
    - MiddlemanをHerokuにデプロイする
    - HerokuのURLを独自ドメインに割り当てる
    - Rack::RewriteでHerokuのURLから独自ドメインにリダイレクトする
- [Middleman on Heroku (with Nginx) – Random Errata](http://randomerrata.com/post/67140752129/nginx-heart-middleman)
    - Nginx buildpack