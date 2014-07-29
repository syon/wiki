
### References
- [TEST CORDING » JavaScript正規表現 怒濤の100サンプル!!](http://testcording.com/?p=2013)
- [正規表現によるバリデーションでは ^ と $ ではなく \A と \z を使おう | 徳丸浩の日記](http://blog.tokumaru.org/2014/03/z.html)

### TIPS

#### 「あ」ではない
<pre>
(?!あ)
</pre>

#### 指定した文字を”含まない”行を抽出する
<pre>
^((?!abcde).)*$
</pre>

### 実装
- [正規表現 - JavaScript | MDN](https://developer.mozilla.org/ja/docs/Web/JavaScript/Guide/Regular_Expressions)
