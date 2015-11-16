---
slug: Cygwin
title: Cygwin
layout: page.jade
---

## インストール

### Cygwin本体のインストール

- [Windows に Cygwin バージョン 1.7 をインストール](http://www.kkaneko.com/rinkou/cygwin/cygwin.html)

### apt_cyg のインストール

<pre>
$ wget -O /bin/apt-cyg http://apt-cyg.googlecode.com/svn/trunk/apt-cyg
$ chmod +x /bin/apt-cyg
</pre>

### cygwin1.dll のコピー

<pre>
$ cp /bin/cygwin1.dll /cygdrive/c/Windows/System32
</pre>

### Cygwinのバージョンを調べる

- [Cygwinのバージョンを調べるには - LostMemories](http://trialpc.net/blog/2008/02/cygwin-3.php)
<pre>$ uname -r</pre>

## エラー対処

### apt-get

- [cygwinで「`setup.ini' というファイルはありません。 Error updating setup.ini, reverting」の対処法 - Qiita](http://qiita.com/DQNEO/items/f49d5a534eee6c3352a8)

### child_info_fork::abort

- [Cygwin – child_info_fork::abort: address space needed – みずさわblog](http://mizusawa-blog.freelance.ne.jp/articles/2012/07/12/cygwin-address-space-needed.html)
- [7. Baseを再構築する - misc:software:gnupack](http://blechmusik.xii.jp/misc/wiliki.cgi?misc%3Asoftware%3Agnupack#H-14bp5hx)
- [Cygwinで、pipeやforkを使うとエラーが起きる場合の対策方法 - ふにゃるん](http://d.hatena.ne.jp/Wacky/20050807/1123386765)  
  setup.exe から Systemカテゴリの下にある rebase というパッケージをインストールしておく必要があります
<pre>
C:\cygwin\bin>ash
$ pwd
/usr/bin
$ ./rebaseall -v
</pre>

### gem

- [Cygwin上でgemを使おうとすると、"No such file or directory" - clash_m45の開発日記](http://d.hatena.ne.jp/clash_m45/20120222/1329901431)
```bash
$ gem list
C:\Ruby193\bin\ruby.exe: No such file or directory -- /cygdrive/c/Ruby193/bin/gem (LoadError)

$ bundle
C:\Ruby193\bin\ruby.exe: No such file or directory -- /cygdrive/c/Ruby193/bin/bundle (LoadError)

$ alias gem='C:/Ruby193/bin/gem'

$ alias bundle='C:/Ruby193/bin/bundle'
```
