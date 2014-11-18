### Links

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

#### あとで読む

- [Vim Advent Calendar 2012 まとめ - C++でゲームプログラミング](http://d.hatena.ne.jp/osyo-manga/20131130/1385820282)
- [Vim Advent Calendar 2013 : Vim を使っている/始めたいなら読んでおきたい Web の記事 - C++でゲームプログラミング](http://d.hatena.ne.jp/osyo-manga/20131201/1385823937)
- [新卒エンジニアに Vim とかについて座学をした - ravelllの日記](http://ravelll.hatenadiary.jp/entry/2014/11/10/145401)

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
