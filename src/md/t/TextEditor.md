---
slug: texteditor
title: TextEditor
layout: page.jade
---

## IDE

#### [Orion](http://eclipse.org/orion/)
HTML/JavaScript/CSS対応のWebIDE


## Emmet
- [HTMLを効率よく書く！Emmetの書き方・使い方まとめ | Designup](http://designup.jp/html-emmet-307/)


## Atom
- __[Atom の日本語化パッケージ "Japanese Menu" を作りました - syonx](http://syonx.hatenablog.com/entry/2015/04/06/233111)__
    - __[Atomでパッケージをインストールする方法とメニューの日本語化 – nocorica](http://blog.nocorica.jp/2015/03/atom-package-install/)__
- [Atom がヤバイ！SublimeTextを余裕で凌駕してしまっていた件](http://www.geeks-dev.com/atom-%E3%81%8C%E3%83%A4%E3%83%90%E3%82%A4%EF%BC%81sublimetext%E3%82%92%E4%BD%99%E8%A3%95%E3%81%A7%E5%87%8C%E9%A7%95%E3%81%97%E3%81%A6%E3%81%97%E3%81%BE%E3%81%A3%E3%81%A6%E3%81%84%E3%81%9F%E4%BB%B6/)
- [\[WIP\]Sublime Textの機能をAtomに移行する \- Qiita](http://qiita.com/sou_lab/items/32c67f82fdc1e49233c8)

### Packages
[chary-tree-view](https://atom.io/packages/chary-tree-view)
: Tree-view responds to only double-click to avoid opening a large file accidentally.

#### 選択範囲の色
```scss
atom-text-editor::shadow {
  .gutter .cursor-line {
    background-color: fade(cyan, 14%);
  }
  .highlights {
    .selection .region {
      background: fade(cyan, 30%);
    }
    .find-result .region {
      border: 1px solid fade(cyan, 80%);
    }
  }
}
```

## Brackets
- [コーディングを超加速するBrackets便利エクステンションまとめ - WEBCRE8.jp](http://webcre8.jp/collect/brackets-extension-coding.html)
- [Web制作が爆捗するBracketsプラグイン13選＆便利なプラグインを探すコツ - ＠IT](http://www.atmarkit.co.jp/ait/articles/1503/20/news130.html)


## Monaco Editor
[Monaco Editor](https://microsoft.github.io/monaco-editor/index.html)
