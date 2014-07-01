
## リファレンス

### [JavaScript Garden](http://bonsaiden.github.io/JavaScript-Garden/ja/)

JavaScript Garden はJavaScriptというプログラム言語の一番奇妙な部分についてのドキュメント集です。 このドキュメントはJavaScriptという言語に慣れていないプログラマーがこの言語について深く知ろうとする際に遭遇する、良くある間違い・小さなバグ・パフォーマンスの問題・悪い習慣などを避ける為のアドバイスを与えます。

### [JavaScript Patterns](http://shichuan.github.io/javascript-patterns/)

A JavaScript pattern and antipattern collection that covers function patterns, jQuery patterns, jQuery plugin patterns, design patterns, general patterns, literals and constructor patterns, object creation patterns, code reuse patterns, DOM and browser patterns (upcoming).

### Links

- [最近のJavaScript開発まとめ : アシアルブログ](http://blog.asial.co.jp/1187)
- [JavaScript でのローカル ファイルの読み込み - HTML5 Rocks](http://www.html5rocks.com/ja/tutorials/file/dndfiles/)
- [今から３分で，HTML5のドラッグ＆ドロップAPIと File APIを習得しよう（JSの実装サンプル付き） - 主に言語とシステム開発に関して](http://d.hatena.ne.jp/language_and_engineering/20140330/HTMLfiveDragDropAndFileAPISample)

## CoffeeScript

- [CoffeeScriptってなんぞ？](http://www.slideshare.net/hayatomizuno/coffeescript-12241689)

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

## 便利スクリプト

### grep

<pre>
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
-----------------------
<input type="text" name="pattern" onkeyup="grep(this.value)" style="width:10em; border:1px solid #E3E3E3;">
</pre>

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

### 引数有りのsetTimeout()

- [引数有りのsetTimeout()について ＭＡｘＵｒａの落書き帳　～Ｓｃｒａｗｌ　Ｎｏｔｅ～](http://maxura.blog62.fc2.com/blog-entry-179.html)

<pre>
setTimeout(function(){
    Fn(arg);
},3000);
</pre>

## JSON

- [JSON Editor](http://braincast.nl/samples/jsoneditor/)

## バッドノウハウ

- [window.openメソッドの第二引数で特定の文字列を渡すとIEでエラーになる](http://codaholic.org/?p=876)
- [JavaScriptでオブジェクトの型を判別するのにtypeof演算子使うとツラいよね - Qiita](http://qiita.com/Layzie/items/465e715dae14e2f601de)