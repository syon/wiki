#### サクラエディタで親フォルダを開くスクリプト

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

#### Zen Coding

- [Zen Coding for Sakura Editorのマクロ設定 - MoonWing](http://mwlab.net/zen-coding-for-sakuraeditor/zen-coding-for-sakuraeditor-setting)
- [ダウンロード - MoonWing](http://mwlab.net/download?did=15) Zen Coding for Sakura Editor (※Not Emmet)
