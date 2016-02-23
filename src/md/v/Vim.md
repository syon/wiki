---
slug: vim
title: Vim
layout: page.jade
---

### Articles
- [ぼくのかんがえたさいしょうのvimrc - derisの日記](http://deris.hatenablog.jp/entry/2014/05/20/235807) ★ミニマル.vimrc
- [僕がサクラエディタからVimに乗り換えるまで - give IT a try](http://blog.jnito.com/entry/20120101/1325420213)
- [Big Sky :: Learn Vim Progressively](http://mattn.kaoriya.net/software/vim/20110902125512.htm)
- [これまでのVimの勉強内容まとめ - Qiita](http://qiita.com/letsspeak/items/fd33d0f2e0fb0afe4531) ★とても参考になる
- [Vimの使い方まとめ | MBA-HACK](http://mba-hack.blogspot.jp/2013/02/vim.html)
- [Vimの便利な画面分割＆タブページと、それを更に便利にする方法 - Qiita](http://qiita.com/tekkoc/items/98adcadfa4bdc8b5a6ca)
- [(初心者向け) Vim の機能紹介＠nagoya.vim #1](http://www.slideshare.net/cohama/vim-nagoyavim-1)
- [なるべく覚えないviエディタの使い方 - ザリガニが見ていた...。](http://d.hatena.ne.jp/zariganitosh/20120227/minimum_vi)
- [.vimrc - Qiita](http://qiita.com/fl04t/items/57ebb0fe8009d00c8499)
- [個人的に参考にしているvimrc - Qiita](http://qiita.com/knt45/items/ea2823361bfd29c25937)
- [これまでのVimの勉強内容まとめ - Qiita](http://qiita.com/letsspeak/items/fd33d0f2e0fb0afe4531)
- [「Vim Bootstrap」を使っておけば、なんちゃって Vimmer も幸せになれる - 大学生からはじめるWeb開発](http://karur4n.hatenablog.com/entry/2014/08/19/202239)
- [Route 477](http://route477.net/w/VimMemo.html)
- [Vim幼稚園からVim小学校へ - Qiita](http://qiita.com/hachi8833/items/7beeee825c11f7437f54)

#### あとで読む

- [Vim Advent Calendar 2012 まとめ - C++でゲームプログラミング](http://d.hatena.ne.jp/osyo-manga/20131130/1385820282)
- [Vim Advent Calendar 2013 : Vim を使っている/始めたいなら読んでおきたい Web の記事 - C++でゲームプログラミング](http://d.hatena.ne.jp/osyo-manga/20131201/1385823937)
- [新卒エンジニアに Vim とかについて座学をした - ravelllの日記](http://ravelll.hatenadiary.jp/entry/2014/11/10/145401)
- [Vim の魅力を余すこと無くお伝えする動画まとめ - fugafuga.write()](http://blog.tokoyax.com/entry/vim/video-matome)
- [『実践Vim』を読んで学んだ、おすすめVimデフォルト機能32個 - MyEnigma](http://myenigma.hatenablog.com/entry/2015/12/19/081933)
- [Vim-Galore : Vimについて知っておくべき全てのこと (1/5) | プログラミング | POSTD](http://postd.cc/vim-galore-1/)

### Tips

- [一日18時間VimでRailsを開発している僕が選ぶVim Tips 10選 | 柿の種とピスタチオ](http://kakipy.com/articles/5) ★とても参考になる

- [脱初心者を目指すなら知っておきたい便利なVimコマンド20選 (Vimmerレベル診断付き) - Qiita](http://qiita.com/jnchito/items/57ffda5712636a9a1e62) GIF付きのよく出来たまとめ

### Install

- [Vim — KaoriYa](http://www.kaoriya.net/software/vim/)

### Command List

- [viコマンド（vimコマンド）一覧（検索・置換）](http://uguisu.skr.jp/Windows/vi.html)

#### よく使うコマンド

- 矩形選択
    0. `control` + `v`
    0. 範囲選択
    0. `shift` + `i`で挿入
    0. `esc`で反映

### vimrc

- [Vim初心者的導入メモ 2/3 「vimrc設定」編 - ナレッジエース](http://blog.blueblack.net/item_110)  
Vimの設定は、全て「_vimrc」というテキストファイルに記述します。

<pre>
:help vimrc
:echo $HOME
:echo $VIM
:version
</pre>

#### ウィンドウサイズ(gvim)

    set lines=24
    set columns=80


#### カラースキーム
- [tomasr/molokai · GitHub](https://github.com/tomasr/molokai)
- [オシャレ派Vimmerのあなたへ。こだわりのカラースキームギャラリーを贈ります。 | ここぽんのーと](http://cocopon.me/blog/?p=4059)

<pre>
colorscheme molokai
</pre>

### Plugin

- [Vimでとても簡単かつ直感的にCSVを編集する方法 - Qiita](http://qiita.com/rbtnn/items/3830c1ca7d65725046ed)


## Command list

### 覚え方
- [Vim Mnemonic | Vim のコマンドの覚え方大全 - haya14busa](http://haya14busa.com/vim-mnemonic/)

### カーソルの移動とスクロール

|Command|Description|
|---|---|
|`w`|次の単語の先頭に移動|
|`e`|単語の最後の文字に移動|
|`b`|前の単語の先頭に移動|
|`W`|次の単語の先頭に移動(記号もひと続きの単語とみなして移動)|
|`E`|単語の最後の文字に移動(記号もひと続きの単語とみなして移動)|
|`B`|前の単語の先頭に移動(記号もひと続きの単語とみなして移動)|
|`H`|表示内の最上行に移動|
|`M`|表示内の中央行に移動|
|`L`|表示内の最下行に移動|
|`z<enter>`|カーソルが表示内の最上行になるようにスクロール|
|`zt`|カーソルが表示内の最上行になるようにスクロール|
|`z.`|カーソルが表示内の中央行になるようにスクロール|
|`zz`|カーソルが表示内の中央行になるようにスクロール|
|`z-`|カーソルが表示内の最下行になるようにスクロール|
|`zb`|カーソルが表示内の最下行になるようにスクロール|
|`<C-f>`|1画面下へスクロール|
|`<C-b>`|1画面上へスクロール|
|`<C-e>`|1行下へスクロール|
|`<C-y>`|1行上へスクロール|
|`%`|対応する括弧に移動|
|`gg`|ファイルの先頭行に移動|
|`G`|ファイルの最終行に移動|
|`14G`|行番号14に移動|
|`:14<enter>`|行番号14に移動|
|`fa`|次に出現する a に移動|
|`ta`|次に出現する a の一つ手前に移動|
|`Fa`|前に出現する a に移動|
|`Ta`|前に出現する a の一つ手前に移動|

### 編集

|Command|Description|
|---|---|
|`i`|カーソルの左側で挿入モード|
|`a`|カーソルの右側で挿入モード|
|`s`|カーソル上の1文字を削除して挿入モード|
|`ciw`|単語全体を削除して挿入モード|
|`I`|行頭で挿入モード|
|`S`|行全体を削除して挿入モード|
|`A`|行末で挿入モード|
|`C`|行末までを削除して挿入モード|
|`o`|下に新たな行を追加して挿入モード|
|`O`|上に新たな行を追加して挿入モード|
