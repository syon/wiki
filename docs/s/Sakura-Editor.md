---
slug: sakura-editor
title: Sakura-Editor
layout: page.jade
---

## 設定

[syon/sakura\-petals](https://github.com/syon/sakura-petals)
: サクラエディタのいろいろ


## TIPS

- [サクラエディタを開いた時の文字コードをUTF\-8にする方法 – 零弐壱蜂](https://b.0218.jp/20130501155621.html)


## Macro

### 親フォルダを開く

- [サクラエディタで親フォルダを開くスクリプト - てつとの部屋](http://testuaoki.blog72.fc2.com/blog-entry-34.html)
```js
//OpenParenetFolder.js
var oWsh = new ActiveXObject("WScript.Shell");

var path;
var parPath;
path = GetFilename;

parPath = path.replace(/[^\\]*$/, "" );
oWsh.run("explorer.exe "+parPath);
```
