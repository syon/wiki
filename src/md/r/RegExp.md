---
slug: regexp
title: RegExp
layout: page.jade
---

### References
- [TEST CORDING » JavaScript正規表現 怒濤の100サンプル!!](http://testcording.com/?p=2013)
- [正規表現によるバリデーションでは ^ と $ ではなく \A と \z を使おう | 徳丸浩の日記](http://blog.tokumaru.org/2014/03/z.html)

### TIPS

#### 「あ」ではない
```
(?!あ)
```

#### 指定した文字を”含まない”行を抽出する
```
^((?!abcde).)*$
```

### 実装

- [正規表現 - JavaScript | MDN](https://developer.mozilla.org/ja/docs/Web/JavaScript/Guide/Regular_Expressions)
- [JavaScriptで正規表現を複数回実行する際の注意点 - Qiita](http://qiita.com/nanocloudx/items/079685599273f3805f77)

- __[Ruby #正規表現](/wiki/ruby/)__

- __[Java #正規表現](/wiki/java/)__
