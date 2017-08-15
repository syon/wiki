---
slug: regexp
title: RegExp
layout: page.jade
---

## 学習

- [LEARN REGEX THE EASY WAY（日本語）](https://github.com/zeeshanu/learn-regex/blob/master/README-ja.md)


## References
- [TEST CORDING » JavaScript正規表現 怒濤の100サンプル!!](http://testcording.com/?p=2013)
- [正規表現によるバリデーションでは ^ と $ ではなく \A と \z を使おう | 徳丸浩の日記](http://blog.tokumaru.org/2014/03/z.html)


## Tools

- [正規表現チェックツールまとめ \- Qiita](http://qiita.com/AQRiL_1132/items/c185c7ad84c129e5a2df)

[Online regex tester and debugger](https://regex101.com/)
: PHP, PCRE, Python, Golang and JavaScript


## TIPS

- [正規表現（肯定先読み、否定先読み、肯定戻り読み、否定戻り読み） \- satosystemsの日記](http://d.hatena.ne.jp/satosystems/20100519/1274237784)

### 「あ」ではない
```
(?!あ)
```

### 指定した文字を”含まない”行を抽出する
```
^((?!abcde).)*$
```


## 実装

- __[JavaScript #正規表現](/wiki/javascript/)__

- __[Ruby #正規表現](/wiki/ruby/)__

- __[Java #正規表現](/wiki/java/)__
