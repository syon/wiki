---
slug: browser
title: ブラウザ
layout: page.jade
---

## Debug

- [console\.logまとめ 2016年夏 \- Qiita](http://qiita.com/ykyk1218/items/0f5858d077d43a49cfe2)


## articles

- [ブラウザにやさしいHTML/CSS](http://www.slideshare.net/TakeharuIgari/htmlcss-34506501)
- [Send beacon data in Chrome 39](http://updates.html5rocks.com/2014/10/Send-beacon-data-in-Chrome-39)
- [フロントエンドエンジニアになってから11ヶ月間で覚えたちょっと捗るChromeの使い方 - Qiita](http://qiita.com/dayoshix/items/0d4043bf7dbaa1dc9184)
- [[フロントエンド] ブラウザレンダリングの仕組みを理解して、ブラウザに優しいJavaScriptを書こう - YoheiM .NET](http://www.yoheim.net/blog.php?q=20140703)
- [Tech TIPS：各Windows OSでのInternet Explorerのサポート終了時期を知る - ＠IT](http://www.atmarkit.co.jp/ait/articles/1503/11/news134.html)
- [Chrome - HTML の script タグ内にインラインで書かれた js をデバッグする方法 - Qiita](http://qiita.com/madobon/items/cf1a22b7960840bb1a65)

### viewport

- [これがスマートフォン向けサイトを作るときの viewport 設定３パターンだ - てっく煮ブログ](http://tech.nitoyon.com/ja/blog/2013/02/15/viewport/)
- [iOS9でviewportのinitial-scaleが無効になる時の対策 | 株式会社クオックス | QOX Inc.](https://qox.jp/blog/ios9_viewport_workaround/)  
  `shrink-to-fit=no`

## パフォーマンス・高速化・最適化

- [ブラウザのパフォーマンスを限界まで高める HTMLコーディングの考え方](http://www.slideshare.net/kawada_hiroshi/html-40678123)
- [HTML5 - Webフロントエンド表示速度、最速化手法まとめ - Qiita](http://qiita.com/zaru/items/51ee8a5be22b75a42927)
- [ハイパフォーマンス・アニメーション - HTML5 Rocks](http://www.html5rocks.com/ja/tutorials/speed/high-performance-animations/)
- [HTML5 Experts.jpはなぜこんなにパフォーマンスが悪いのか…全てお見せします！ーWebパフォーマンス改善企画（解析編）](https://html5experts.jp/yusuke-naka/13671/)

## Service Worker
> Service Worker はブラウザが Web ページとは別にバックグラウンドで実行するスクリプトで、Web ページやユーザのインタラクションを必要としない機能を Web にもたらします。将来的にはプッシュメッセージ、バックグラウンド同期、ジオフェンシングなどが導入されるでしょう。しかし最初は、ネットワークリクエストへの介入や処理機能と、レスポンスをプログラムから操作できるキャッシュ機能に限定されます。
> この API にとてもわくわくするのは、オフライン体験をサポートし、そしてその体験を開発者が完全にコントロールできることにあります。

- [Service Worker の紹介: Service Worker の使い方 - HTML5 Rocks](http://www.html5rocks.com/ja/tutorials/service-worker/introduction/)
- [Service worker が拓く mobile web の新しいかたち](http://www.slideshare.net/kinukox/service-worker-mobile-web)

## Internet Explorer

- [Internet Explorer 11 をビルトイン Administrator で使用すると、名前付きのウィンドウの名前が認識されない](https://support.microsoft.com/ja-jp/kb/2909974)
- [IE11のユーザエージェント問題 - 開発者側でできる対策 (判定方法の変更/互換性モードの利用) - ふろしき.js](http://furoshiki.hatenadiary.jp/entry/2013/11/11/224605)

#### 互換表示
- [IE対策：互換表示させない。 - Qiita](http://qiita.com/rico/items/09c896290e218ed2b7c3)
```html
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
```


## Selenium

#### npm
- [selenium\-server\-standalone\-jar](https://www.npmjs.com/package/selenium-server-standalone-jar)
- [selenium\-standalone](https://www.npmjs.com/package/selenium-standalone)

#### articles
- [selenium\-webdriverの紹介とAPI翻訳 \- Qiita](http://qiita.com/nazomikan/items/40b86dc5619bb1795aaa)
- __[Seleniumアレルギーのための処方箋 \- Qiita](http://qiita.com/cognitom/items/27b7375bea653b414c8f)__
- [\[Selenium 3\-beta\] Server fails to start when launched with chromedriver v2\.22 · Issue \#2566 · SeleniumHQ/selenium](https://github.com/SeleniumHQ/selenium/issues/2566)
> -D arguments in the command line should come before the '-jar's

### [WebdriverIO](http://webdriver.io/)
Selenium 2\.0 javascript bindings for nodejs

- [5 Minutes with WebdriverIO \- YouTube](https://www.youtube.com/watch?v=vPes7NKeYno)
- [WebdriverIO \+ power\-assert でe2eテストをgeneratorで書いてみる \- Qiita](http://qiita.com/yoshi6jp@github/items/24d01dfc6712dbf112aa)
- [LIGブログの安全な開発のために 〜WebdriverIOでスクリーンショットを撮る編〜 \| それいけ！フロントエンド](https://liginc.co.jp/304470)
