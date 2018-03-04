---
slug: bookmarklet
title: Bookmarklet
layout: page.jade
---

- [JAVASCRIPT::BOOKMARKLET](http://bookmarklet.daa.jp/)
- [ソーシャルボタンのJavaScriptでfunctionの前に「!」がついている理由: 小粋空間](http://www.koikikukan.com/archives/2013/06/12-003333.php)
- [Web便利ツール/URLエンコード・デコードフォーム - TAG index Webサイト](http://www.tagindex.com/tool/url.html) →　!function(){ ... }();
- [WDF - Software : ブックマークレット作成スクリプト](http://www.eonet.ne.jp/~wdf/software/bookmarklet_creator.html)
- [Bookmarkleter](http://chriszarate.github.io/bookmarkleter/)
- [Hatena::Let](http://let.hatelabo.jp/)

### jQuerify
<pre>
javascript:(function(){var s=document.createElement('script');s.setAttribute('src','//code.jquery.com/jquery-2.0.3.min.js');document.getElementsByTagName('head')[0].appendChild(s);})();
</pre>

### onKeyDownブロック無効化
<pre>
javascript:(function(){var%20c=function(e){return%20true;};document.onkeydown=c;var%20m=window.MENU;if(m){m.document.onkeydown=c;};var%20o=window.OPERATION;if(o){o.document.onkeydown=c;}})()
</pre>

### Webフォント判別
- [使われているWebフォント名が分かる便利なブックマークレット Type Sample - フォントブログ](http://blog.petitboys.com/archives/typesample.html)

### Tips
- [Twitter / Isthmis: ブックマークレットに絵文字アイコン導入したらすごい視認性が上がって使いやすくなった](https://twitter.com/Isthmis/status/475999198819536896)