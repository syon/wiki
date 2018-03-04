## リファレンス

### [JavaScript Garden](http://bonsaiden.github.io/JavaScript-Garden/ja/)

JavaScript Garden はJavaScriptというプログラム言語の一番奇妙な部分についてのドキュメント集です。 このドキュメントはJavaScriptという言語に慣れていないプログラマーがこの言語について深く知ろうとする際に遭遇する、良くある間違い・小さなバグ・パフォーマンスの問題・悪い習慣などを避ける為のアドバイスを与えます。

### [JavaScript Patterns](http://shichuan.github.io/javascript-patterns/)

A JavaScript pattern and antipattern collection that covers function patterns, jQuery patterns, jQuery plugin patterns, design patterns, general patterns, literals and constructor patterns, object creation patterns, code reuse patterns, DOM and browser patterns (upcoming).


## CoffeeScript

- [CoffeeScriptってなんぞ？](http://www.slideshare.net/hayatomizuno/coffeescript-12241689)
- [cookpad/styleguide](https://github.com/cookpad/styleguide/blob/master/coffeescript.ja.md) クックパッド CoffeeScript スタイルガイド
    - [CoffeeScript スタイルガイドの公開とその目的 - クックパッド開発者ブログ](http://techlife.cookpad.com/entry/2015/04/15/092710)
- [すぐに分かる CoffeeScript によるクラスの書き方 ｜ Developers.IO](http://dev.classmethod.jp/client-side/javascript/class-in-coffeescript/)
- [CoffeeScriptでjQuery使うときのメモ | webOpixel](http://www.webopixel.net/javascript/660.html)
- [CoffeeScriptのFor文 - Shut the fuck up and write some code](http://verytired.hateblo.jp/entry/2012/12/18/210223)


## Template Engine

- [So you need a template engine..](http://garann.github.io/template-chooser/)  
  質問に答えていくと最適なJSのテンプレートエンジンが分かるサイト

### [Handlebars.js: Minimal Templating on Steroids](http://handlebarsjs.com/)
ロジックレスなテンプレート言語「Mustache」の拡張ライブラリ
- [Handlebars.jsの基礎 | be-hase.com](http://be-hase.com/javascript/43/)
- [Handlebars.jsの基本的な使い方のメモ - console.lealog();](http://lealog.hateblo.jp/entry/2012/12/09/093059)
- [Try Handlebars.js in your web browser](http://tryhandlebarsjs.com/)

### [Underscore.js #template](http://documentcloud.github.io/underscore/#template)


## 学習

- [最強オブジェクト指向言語 JavaScript 再入門！](http://www.slideshare.net/yuka2py/javascript-23768378)  
  プロトタイプチェイン、オブジェクトの生成、スコープチェイン、クロージャ、this
- [JavaScriptでうっかりやってしまいそうなこと色々 : アシアルブログ](http://blog.asial.co.jp/1092)
    - String#replace()は文字列指定では全部置き換えない
    - parseInt()は基数を指定しないと危険
    - +での加算時は型に注意
    - nullとundefinedで計算
    - Array#sort()は文字列比較による辞書順でソートする
    - Array#length はキーに数字以外の文字列では増えない
    - Array#lengthはキーに数字を指定したら変化する
    - Array#lengthはIE8では末尾カンマで増える
    - Date#getMonth()は「月 - 1」の値を返す
    - Date#getYear()は『1900年からの差分を返す』
    - Date.parse()は『IETF 標準日付構文』を受け付ける
    - ifの判定条件
    - 条件付きで関数を定義する
    - ループを使った関数定義
    - encodeURI & encodeURIComponentの違い
- [JavaScript のスコープチェーンとクロージャを理解する - tacamy.blog](http://tacamy.hatenablog.com/entry/2012/12/31/005951)
- [知ってて当然？初級者のためのJavaScriptで使う即時関数(function(){...})()の全て - 三等兵](http://d.hatena.ne.jp/sandai/20110824/p1)
- [や...やっと理解できた！JavaScriptのプロトタイプチェーン - maeharinの日記](http://d.hatena.ne.jp/maeharin/20130215/javascript_prototype_chain)
- [この順番で読めばOK！JavaScriptを理解するための14冊 | DECONCEPTER](http://log.deconcepter.jp/2012/10/javascriptbooks/)
- [覚醒!JavaScript](http://www.slideshare.net/ghrgc/js-kakusei)
    - JavaScriptオブジェクト
    - 関数 Function()
    - グローバルオブジェクト
    - this
    - スコープとクロージャ
- [Modern JavaScript Applications: Design Patterns](http://www.slideshare.net/VolodymyrVoytyshyn/modern-java-script-applications)
- [javascript:void(0)のまとめ: 小粋空間](http://www.koikikukan.com/archives/2015/03/11-002222.php)
- [“use strict”（厳格モード）を使うべきか？｜もっこりJavaScript｜ANALOGIC（アナロジック）](http://analogic.jp/use-strict/#usage)
- [どの非同期処理が良いのか勝負 // Speaker Deck](https://speakerdeck.com/yosuke_furukawa/dofalsefei-tong-qi-chu-li-galiang-ifalsekasheng-fu)


## バッドノウハウ

- [JavaScriptでオブジェクトの型を判別するのにtypeof演算子使うとツラいよね - Qiita](http://qiita.com/Layzie/items/465e715dae14e2f601de)
- [JavaScriptのparseIntで小数を整数に変換しようとしてはまる](https://gist.github.com/Hamayama/a1ddbd882cb06a475735)

### IE

#### window.open
- [window.openメソッドの第二引数で特定の文字列を渡すとIEでエラーになる](http://codaholic.org/?p=876)

#### box-shadow
- [internet explorer - CSS Box-Shadow Not Working in IE - Stack Overflow](http://stackoverflow.com/questions/9949396/css-box-shadow-not-working-in-ie)

#### textbox clear icon
- [javascript - Event fired when clearing text input on IE10 with clear icon - Stack Overflow](http://stackoverflow.com/questions/14498396/event-fired-when-clearing-text-input-on-ie10-with-clear-icon)

#### select box
- [javascript - セレクトボックス内の要素を非表示にしたい - スタック・オーバーフロー](http://ja.stackoverflow.com/questions/16612/)  
  この仕様のおかげで、ローカルフィルタの実現にて、初期状態の option たちを clone して保持することでフィルタ処理の度に洗い替えした

### iOS
#### click event
- [iOS で click イベントがわけのわからない動作をする件について - Qiita](http://qiita.com/38kun/items/ce6a26c9c59612e6f515)
- [iOSにおけるclickイベントの発生条件まとめ - hifive](http://www.htmlhifive.com/conts/web/view/library/ios-click-event)

#### script
- `"use strict";`を記述した時にスクリプト自体が動作しないことがあった


## Articles

- [最近のJavaScript開発まとめ : アシアルブログ](http://blog.asial.co.jp/1187)
- [JavaScript でのローカル ファイルの読み込み - HTML5 Rocks](http://www.html5rocks.com/ja/tutorials/file/dndfiles/)
- [今から３分で，HTML5のドラッグ＆ドロップAPIと File APIを習得しよう（JSの実装サンプル付き） - 主に言語とシステム開発に関して](http://d.hatena.ne.jp/language_and_engineering/20140330/HTMLfiveDragDropAndFileAPISample)
- [JavaScript 便利メソッド集 | phiary](http://phiary.me/javascript-useful-collection/)
