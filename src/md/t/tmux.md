---
slug: tmux
title: tmux
layout: page.jade
---

### References

#### [tmux - Manual Pages](http://www.openbsd.org/cgi-bin/man.cgi?query=tmux&sektion=1)
公式マニュアル

<dl><dt>C-z ?</dt><dd>現在のキーバインドを表示</dd></dl>

- [tmux Ver.1.6 list-keys 説明一覧](http://n.blueblack.net/files/2012-07-20_04_comfortable_cui_environment_tmux/tmux_list_keys_info.txt)


## .tmux.conf

- [tmuxのおすすめ設定 - Qiita](http://qiita.com/catatsuy/items/db0a471bf1eabaa21c36)
- [tmuxのすすめ - catatsuyのBlog](http://blog.catatsuy.org/a/243)
- [tmuxのペインやウィンドウ間を移動する方法 - MBA-HACK](http://mba-hack.blogspot.jp/2013/01/tmux.html)

### 表記

<dl>
  <dt>C-a</dt>
  <dd>Controlキー(Ctrl)を押しながら A を押す</dd>
  <dt>M-a</dt>
  <dd>Metaキー(Alt)を押しながら A を押す</dd>
</dl>


## Usage

### Session

- [Bash - tmuxを使いこなそう（ウインドウ、ペイン、セッション、アタッチ、デタッチ） - Qiita](http://qiita.com/shoma2da/items/2e68c1e59938eb0c2f83)

```bash
$ tmux new -s my_session

$ tmux ls

# Attach last session
$ tmux a

# Attach session by name
$ tmux a -t my_session

# Dettach
C-z d
```

### ペイン

<table>
    <tr>
        <td><code>C-z 1</code></td><td>ペインを分解して1つのウィンドウにする</td>
    </tr>
    <tr>
        <td><code>C-z 2</code></td><td>上下に分割する</td>
    </tr>
    <tr>
        <td><code>C-z 3</code></td><td>左右に分割する</td>
    </tr>
    <tr>
        <td><code>C-z C-k</code></td><td>現在のペインを kill する</td>
    </tr>
    <tr>
        <td><code>C-z k</code></td><td>ウィンドウを kill する</td>
    </tr>
    <tr>
        <td><code>C-z 矢印</code></td><td>矢印方向のペインに移動</td>
    </tr>
    <tr>
        <td><code>C-z-矢印</code></td><td>ペインのサイズ調整</td>
    </tr>
</table>

### コピーモード
- [tmuxのコピーモードのキーバインドを考えてみた - Qiita](http://qiita.com/syui/items/6a9cbd39f221d3b996a3)
- [株式会社シャノン技術ブログ: tmuxの紹介](http://shanon-tech.blogspot.jp/2012/05/tmux.html)
