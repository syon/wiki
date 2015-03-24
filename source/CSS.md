## Reference

### [CSS Reference | Codrops](http://tympanus.net/codrops/css_reference/)
- [CSSの基礎知識から実践的なテクニックまで、しっかりと身につけたい人はチェックした方がいいサイト -CSS Reference | コリス](http://coliss.com/articles/build-websites/operation/css/css-reference-by-codrops.html)

### ブラウザ対応表
- [Can I use... Support tables for HTML5, CSS3, etc](http://caniuse.com/)
- [HTML5 & CSS3 Web Design](http://fmbip.com/litmus/)


## Sass
[Sass: Syntactically Awesome Style Sheets](http://sass-lang.com/)

> Sass is an extension of CSS3 which adds nested rules, variables, mixins, selector inheritance, and more. Sass generates well formatted CSS and makes your stylesheets easier to organize and maintain.

```bash
$ gem install sass
$ sass input.scss output.css
```

#### [LibSass](http://libsass.org/)
A C implementation of a Sass compiler
- [libSass wrappers](http://sass-lang.com/libsass)
    - [sass/node-sass](https://github.com/sass/node-sass)

### [Compass](http://compass-style.org/)

> - ベンダープレフィックス自動生成
> - 画像をフォルダに置くだけでCSSスプライトを生成
> - Variables, Mixins, Functions
> - CSS3
> - Layout, Reset, Typography

- [SassとCompassを使って楽しくCSSコーディング！ - develo.org](http://develo.org/2012/02/26/2335.html)
- [楽しくコーディング！Sass,Compassのデフォルトmixinとカスタム関数 - develo.org](http://develo.org/2014/05/19/0935.html)
- [今日から使える！ Sass/compass ゆるめ勉強会](http://www.slideshare.net/yuka2py/sasscompass-28389532)
- [【Webデザイナ－・コーダー向け】すぐに使えるSCSS入門｜Compass基礎編 ｜ Developers.IO](http://dev.classmethod.jp/ria/html5/web-desiner-corder-scss-compass/)


## CSS Framework
- → __[[TwitterBootstrap]]__
- → __[[Google Material Design|Design#Google Material Design]]__
- [Gumby - A Flexible, Responsive CSS Framework - Powered by Sass](http://gumbyframework.com/)
- [Semantic UI](http://semantic-ui.com/)
- [Bourbon - A Sass Mixin Library](http://bourbon.io/)
    - [Neat](http://neat.bourbon.io/): A lightweight semantic __grid framework__ for Sass and Bourbon.
    - [Bitters](http://bitters.bourbon.io/): __Scaffold__ styles, variables and structure for Bourbon projects.
    - [Refills](http://refills.bourbon.io/): __Components and patterns__ built with Bourbon and Neat.


## CSS Code

### CSS整形
* [ProCSSor - Advanced CSS Prettifier](http://procssor.com/process)
* [CSSを即時整形するツール・「CSS Beautify」 - かちびと.net](http://kachibito.net/useful-resource/css-beautify)

### Compass
* [CodekitでCompass+Sassコーディングをはじめる :: ［ FLAT ］ Develop | ONO TAKEHIKO from aguije inc.](http://flat.is/develop/2014/05/codekit-compass-sass/)


## 学習

- [CSS： marginの正しい理解 (CSSのmarginが難しい) | Web Design KOJIKA17](http://kojika17.com/2012/08/margin-of-css.html)
- [印刷用CSSをまとめてみた。 - TRANS](http://trans.hatenablog.jp/entry/20061208/p1)
- [理解しておきたい、CSSによるインラインレイアウトの仕組み（font-size／line-height編）Inline Layout─Frontrend Conference | HTML5Experts.jp](http://html5experts.jp/takazudo/13339/)

### CSS Animation
- [動くCSSのためのメモ。](http://lopan.jp/css-animation/) すごいまとめ
- [Animatable](http://leaverou.github.io/animatable/) 各プロパティのアニメーション効果を確認できる
- [HTML5 × CSS3 × jQueryを真面目に勉強 – #9 CSS3アニメーション（Transition） ｜ Developers.IO](http://dev.classmethod.jp/ria/html5/html5-x-css3-x-jquery-9-css3transition/)
- [SCSSとCompassでおしゃれなCSSパーティクルを作ってみた – ICS LAB](http://ics-web.jp/lab/archives/1808)
- [[CSS]box-shadowを使って、三連リングのようなカワイイ囲いを作るテクニック | コリス](http://coliss.com/articles/build-websites/operation/css/ring-css-used-box-shadow-by-fixcl.html)
- [Canvasと戯れる　第2話「Canvasでグラデーションのアニメーションを作ろう」 · DevJam](http://devjam.net/blog/368)
- [Some More Inspiration for Text Input Effects | Codrops](http://tympanus.net/codrops/2015/03/18/inspiration-text-input-effects-2/)


## Font

### font-family

<pre>
font-family: "Helvetica Neue", Helvetica, Arial, "游ゴシック", YuGothic, "Hiragino Kaku Gothic ProN", Meiryo, sans-serif;
</pre>
- [CSSでのフォント指定について考える（2014年） - DTP Transit](http://www.dtp-transit.jp/misc/web/post_1881.html)
- [CSSのフォント指定見直した | Border/memo](http://brdr-mmrndm.tumblr.com/post/78948249547/css)
- [JavaScriptでフォント名一覧を取得する3つの方法 | TAKESAKO @ Yet another Cybozu Labs](http://developer.cybozu.co.jp/takesako/2007/03/javascript_geta.html)

### font-size

* [[CSS]フォントのサイズ指定はpx？ em？ 既存の再検討とこれからのテクニック | コリス](http://coliss.com/articles/build-websites/operation/css/font-size-with-rem-by-snook-ca.html)

### ChromeでWebフォントが適用されない現象に対する対策
確認したChromeのバージョン: 24.0.1312.57 m

以下にアクセスしてコードを直接CSSに書いて対処。

http://fonts.googleapis.com/css?family=Open+Sans:700italic

```css
/* NG */
@font-face {
  font-family: 'Open Sans';
  font-style: italic;
  font-weight: 700;
  src: local('Open Sans Bold Italic'), local('OpenSans-BoldItalic'), url(http://*****.woff) format('woff');
}

/* OK */
@font-face {
  font-family: 'Open Sans';
  font-style: normal;
  font-weight: 700;
  src: local('Open Sans Bold Italic'), local('OpenSans-BoldItalic'), url(http://*****.woff) format('woff');
}
```

## CSS Sprite

### [CSS Sprite Generator | Project Fondue](http://ja.spritegen.website-performance.org/)  
  画像をまとめたZIPをアップロードするとCSSスプライトの画像とCSS構文を生成してくれるサービス

### [The easiest way to create your CSS sprites - SpritePad](http://wearekiss.com/spritepad)  
  画像をドラッグ＆ドロップして配置して、CSSスプライト用のPNGとCSSファイルを書き出せるサイト。

### 実装
* [Retinaディスプレイを考慮したCSSスプライトの実装方法 | コリス](http://coliss.com/articles/build-websites/operation/css/css-sprites-for-retina-displays-by-miekd.html)


## TIPS

### viewport

- [これがスマートフォン向けサイトを作るときの viewport 設定３パターンだ - てっく煮ブログ](http://tech.nitoyon.com/ja/blog/2013/02/15/viewport/)

### Flexbox
- [これからのCSSレイアウトはFlexboxで決まり！ | Webクリエイターボックス](http://www.webcreatorbox.com/tech/flexbox/)
    - CSSを一行プラスするだけで横並びにできる！
    - 横並びになった要素の高さが最初から揃ってる！
    - 要素を上下左右、好きな順序に並び替えられる！
    - スペースの操作も自由自在！
    - 高さの異なる横並びの要素を、簡単に上下中央揃え！

### float
* [CSSでfloatを解除する方法のまとめ: 小粋空間](http://www.koikikukan.com/archives/2013/03/28-005555.php)

### 要素の重なり
* [要素の重なりについて本気出して考えてみた（z-indexとか何とかとか） ? No.1026](http://no1026.com/archives/104)  
  ''z-indexにはpositionが必要⇔positionあるところにz-indexあり''

### 擬似クラスの:(hoge)-child系と:(hoge)-type系の違い
* [【CSS】擬似クラスの:(hoge)-child系と:(hoge)-type系の違いをここいらでしっかり覚えておこうか。 | バシャログ。](http://c-brains.jp/blog/wsg/13/07/03-144934.php)

### 改行させない
* [white-space－スタイルシートリファレンス](http://www.htmq.com/style/white-space.shtml)  
  ソース中の連続する半角スペース・タブ・改行を、1つの半角スペースとして表示します。ボックスの大きさが指定されている場合にも、自動的に改行されません。

```css
white-space: nowrap;
```

### tableタグに cellspacing="0" を入れたくない
* [table に指定しておきたい CSS メモ // understandard](http://www.understandard.net/css/css009.html)

### 中央寄せ
* [Midway.js](https://github.com/BrandonJacoby/Midway.js)  
  Automatically center responsive elements.

* [CSS 画像やテキスト要素を縦横中央配置する6つの方法 – How to Center Elements Horizontally and Vertically. | Stronghold](http://zxcvbnmnbvcxz.com/css-center-img-text/)

* [CSSでblock要素を上下左右中央寄せにする、イマドキの方法。](http://c-brains.jp/blog/wsg/14/08/06-100100.php)
    - [position: absolute; の指定で要素が上下左右中央配置になる理由 | WWW WATCH](http://hyper-text.org/archives/2014/08/position_absolute_center_layout.shtml)

### パララックス
- [[CSS]パララックスのエフェクトをスクリプト無し、CSSで実装するチュートリアル | コリス](http://coliss.com/articles/build-websites/operation/css/pure-css-parallax-by-keithclark.html)
    - * [Pure CSS parallax scrolling websites | Keith Clark](http://blog.keithclark.co.uk/pure-css-parallax-websites/)

## Articles
- [本の虫: rebeccapurpleがCSS 4 colorに提案された経緯](http://cpplover.blogspot.jp/2014/06/rebeccapurplecss-4-color.html)
- [[CSS]シンプルなHTMLで、美しいパンくずを実装する4つのスタイルシート | コリス](http://coliss.com/articles/build-websites/operation/css/css3-breadcrumbs-by-red-team-design.html)
- [保存版！CSS3で出来る素敵なデザインやアニメーションをまとめてみた](http://www.webdesign-fan.com/css3-matome)
