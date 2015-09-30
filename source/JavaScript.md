## リファレンス

### [JavaScript Garden](http://bonsaiden.github.io/JavaScript-Garden/ja/)

JavaScript Garden はJavaScriptというプログラム言語の一番奇妙な部分についてのドキュメント集です。 このドキュメントはJavaScriptという言語に慣れていないプログラマーがこの言語について深く知ろうとする際に遭遇する、良くある間違い・小さなバグ・パフォーマンスの問題・悪い習慣などを避ける為のアドバイスを与えます。

### [JavaScript Patterns](http://shichuan.github.io/javascript-patterns/)

A JavaScript pattern and antipattern collection that covers function patterns, jQuery patterns, jQuery plugin patterns, design patterns, general patterns, literals and constructor patterns, object creation patterns, code reuse patterns, DOM and browser patterns (upcoming).

### Links

- [最近のJavaScript開発まとめ : アシアルブログ](http://blog.asial.co.jp/1187)
- [JavaScript でのローカル ファイルの読み込み - HTML5 Rocks](http://www.html5rocks.com/ja/tutorials/file/dndfiles/)
- [今から３分で，HTML5のドラッグ＆ドロップAPIと File APIを習得しよう（JSの実装サンプル付き） - 主に言語とシステム開発に関して](http://d.hatena.ne.jp/language_and_engineering/20140330/HTMLfiveDragDropAndFileAPISample)


## ECMAScript / altJS

### ES6
- [Effective ES6](http://www.slideshare.net/teppeis/effective-es6)

### CoffeeScript

- [CoffeeScriptってなんぞ？](http://www.slideshare.net/hayatomizuno/coffeescript-12241689)
- [cookpad/styleguide](https://github.com/cookpad/styleguide/blob/master/coffeescript.ja.md) クックパッド CoffeeScript スタイルガイド
    - [CoffeeScript スタイルガイドの公開とその目的 - クックパッド開発者ブログ](http://techlife.cookpad.com/entry/2015/04/15/092710)
- [すぐに分かる CoffeeScript によるクラスの書き方 ｜ Developers.IO](http://dev.classmethod.jp/client-side/javascript/class-in-coffeescript/)
- [CoffeeScriptでjQuery使うときのメモ | webOpixel](http://www.webopixel.net/javascript/660.html)
- [CoffeeScriptのFor文 - Shut the fuck up and write some code](http://verytired.hateblo.jp/entry/2012/12/18/210223)

### TypeScript

- [「生JavaScriptで十分」な人にこそTypeScriptをおすすめしたい理由 | mzsm.me](http://mzsm.me/2014/12/23/advent-calendar-2014-typescript/)
- [TypeScriptを使ってECMAScript 2015時代のJavaScriptを先取りしよう！ | HTML5Experts.jp](https://html5experts.jp/vvakame/16241/)


## Debug
- [Best JavaScript Debugging Tools | jQueryHouse](http://jqueryhouse.com/best-javascript-debugging-tools/)


## Template Engine

- [So you need a template engine..](http://garann.github.io/template-chooser/)  
  質問に答えていくと最適なJSのテンプレートエンジンが分かるサイト

### [Handlebars.js: Minimal Templating on Steroids](http://handlebarsjs.com/)
ロジックレスなテンプレート言語「Mustache」の拡張ライブラリ
- [Handlebars.jsの基礎 | be-hase.com](http://be-hase.com/javascript/43/)
- [Handlebars.jsの基本的な使い方のメモ - console.lealog();](http://lealog.hateblo.jp/entry/2012/12/09/093059)
- [Try Handlebars.js in your web browser](http://tryhandlebarsjs.com/)

### [Underscore.js #template](http://documentcloud.github.io/underscore/#template)

## 便利

- [Welcome to JSON Blob | create, edit, view, format, and share JSON](http://jsonblob.com/)

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

#### Promise
- [JavaScript Promiseの本](http://azu.github.io/promises-book/)
- [Node.jsエンジニアなら2014年内に知っておきたいPromise入門 | Tokyo Otaku Mode Blog](http://blog.otakumode.com/2014/09/17/nodejs-promise/)
- [Promiseのアレ](http://takazudo.github.io/presentation-promise/#/)
- [ES6 Promises in Depth](http://ponyfoo.com/articles/es6-promises-in-depth)  
  Promiseの動きをビジュアライズしながら、`.then`や`.catch`がどのようなフローで処理されるかを解説している記事


## 便利スクリプト

### grep

```js
function grep (pattern) {
    try {
        var regex = new RegExp(pattern, "i");
        var trs   = document.getElementsByTagName('tr');
        var len   = trs.length;
        for (var i = 0; i < len; i++) {
            var t = trs[i];
            if (t.className == "line") {
                if (t.innerHTML.match(regex)) {
                    t.style.display = "inline";
                } else {
                    t.style.display = "none";
                }
            }
        }
    } catch (e) {
        // 正規表現の文法エラーを無視する
    }
}
```
```html
<input type="text" name="pattern" onkeyup="grep(this.value)" style="width:10em; border:1px solid #E3E3E3;">
```

### クエリストリングの値を取得

- [javascript - How can I get query string values? - Stack Overflow](http://stackoverflow.com/questions/901115/how-can-i-get-query-string-values)

<pre>
function getParameterByName(name) {
    name = name.replace(/["\\\[").replace(/[\](\[]/,)]/, "\\\]");
    var regex = new RegExp("[+ name + "=([^&#](\\?&]")*)"),
        results = regex.exec(location.search);
    return results == null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
}
</pre>

## TIPS

### UserAgent

- [JavaScript とかによるブラウザ判定方法のまとめ - etc9](http://d.hatena.ne.jp/Naotsugu/20110927/1317140891)

### EventListener

- [JavaScript - addEventListener / removeEventListener サンプル – nocorica](http://blog.nocorica.jp/2015/05/js-eventlistener/)

### Parent window, Child window
#### JavaScript access from child window to parent window
```js
/* Parent window */
function parentfunc(arg) {
  console.log(arg); // from child
}
```
```js
/* Child window */
function triggerdfunc() {
  window.opener.parentfunc('from child');
}
```

### 高速化

- [一行で IE の JavaScript を高速化する方法 - IT戦記](http://d.hatena.ne.jp/amachang/20071010/1192012056)

### iPhone の Safari でアドレスバーを隠す

- [iPhone の Safari でアドレスバーを隠すときにやってはいけないこと - メモ用紙](http://d.hatena.ne.jp/scientre/20130611/hide_addressbar_on_iphone)

<pre>
window.addEventListener("load", function() {
    setTimeout(scrollBy, 100, 0, 1);
}, false);
</pre>

### [JavaScriptで画面サイズを取得する | かえラボBlog](http://kaelab.ranadesign.com/blog/2010/10/javascript-5.html)

### undefined分岐

- [JavaScript：undefined値の判定 - 泥のように](http://blog.tojiru.net/article/205007468.html)

<pre>
if (typeof a === "undefined") {
</pre>

### setTimeout
- [JavaScript - setTimeout(...,0)などの使いドコロ - Qiita](http://qiita.com/jkr_2255/items/17693ab77beea71a871c)

> じつは、setTimeoutはJavaScriptの言語機能ではなくてブラウザ側の機能です。これも一種のイベントコールバックだと考えるとスッキリします。

#### 引数有りのsetTimeout()

- [引数有りのsetTimeout()について ＭＡｘＵｒａの落書き帳　～Ｓｃｒａｗｌ　Ｎｏｔｅ～](http://maxura.blog62.fc2.com/blog-entry-179.html)

<pre>
setTimeout(function(){
    Fn(arg);
},3000);
</pre>

### タッチパネル対応
```js
var supportTouch  = 'ontouchend' in document;
var EV_TOUCHSTART = supportTouch ? 'touchstart' : 'mousedown';
var EV_TOUCHMOVE  = supportTouch ? 'touchmove' : 'mousemove';
var EV_TOUCHEND   = supportTouch ? 'touchend' : 'mouseup';

$(document).on(EV_TOUCHEND, '#target', function(){...
```
- [touch, click, pointerの実装 - タッチイベントとマウスイベント | CodeGrid](https://app.codegrid.net/entry/touch-mouse)

### エラー収集

- [大手Webサービスがクライアント側で発生したJavaScriptのエラーをどう収集しているのか まとめ - Qiita](http://qiita.com/grapswiz/items/4e97968f3d3df97a4c76)

### trim
```js
target = target.replace(/(^\s+)|(\s+$)/g, "");
```
```js
target = $.trim(target);
```

### Form
- [HTML5のValidationでsubmitボタンの状態を変更する - Qiita](http://qiita.com/r7kamura/items/6f68305c01e9c0a02d91)

### Hidden field
- [Create a hidden field in JavaScript - Stack Overflow](http://stackoverflow.com/questions/1000795/create-a-hidden-field-in-javascript)

### Keys in Object
- [[JavaScript] オブジェクトをループでまわす - Qiita](http://qiita.com/phi/items/98975e1bb4995c1f1bcf)

```js
var theObj = {a:1, b:2, c:3}
Object.keys(theObj)
=> ["a", "b", "c"]
Object.keys(theObj).map(function(d){console.log(d)})
=> a
   b
   c
```


## JSON

- [JSON Editor](http://braincast.nl/samples/jsoneditor/)

## バッドノウハウ

- [window.openメソッドの第二引数で特定の文字列を渡すとIEでエラーになる](http://codaholic.org/?p=876)
- [JavaScriptでオブジェクトの型を判別するのにtypeof演算子使うとツラいよね - Qiita](http://qiita.com/Layzie/items/465e715dae14e2f601de)
