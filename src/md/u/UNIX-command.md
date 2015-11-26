---
slug: unix-command
title: UNIX-command
layout: page.jade
---

- [ジャンル別UNIXコマンド一覧 (*BSD/Linux)](http://x68000.q-e-d.net/~68user/unix/genre.html)

### System

    $ sudo shutdown -h now  すぐにシャットダウン
    $ sudo shutdown -r now  すぐに再起動
    $ sudo reboot           すぐに再起動

### File

    $ cp -r fromdir todir

### wget
- [wgetで結果を標準出力に出す - うまい棒blog](http://d.hatena.ne.jp/hogem/20090523/1243060141)

<pre>
 wget http://www.example.com/ -O -
</pre>

### curl
- [WebAPIリクエスト仕様書としてcurlコマンドのご提案 - Qiita](http://qiita.com/Hiraku/items/dfda2f8a5353b0742271)

### sed
- [sedコマンドで覚えておきたい使い方12個 | 俺的備忘録 〜なんかいろいろ〜](http://orebibou.com/2015/07/sed%E3%82%B3%E3%83%9E%E3%83%B3%E3%83%89%E3%81%A7%E8%A6%9A%E3%81%88%E3%81%A6%E3%81%8A%E3%81%8D%E3%81%9F%E3%81%84%E4%BD%BF%E3%81%84%E6%96%B912%E5%80%8B/)


## Network

#### LAN内で利用されているIPアドレスを調べる

    $ arp -a


## Articles

- [標準コマンドから乗り換えよう！より良いLinuxコマンドラインユーティリティー11選 | 俺的備忘録 〜なんかいろいろ〜](http://orebibou.com/2014/08/%e6%a8%99%e6%ba%96%e3%82%b3%e3%83%9e%e3%83%b3%e3%83%89%e3%81%8b%e3%82%89%e4%b9%97%e3%82%8a%e6%8f%9b%e3%81%88%e3%82%88%e3%81%86%ef%bc%81%e3%82%88%e3%82%8a%e8%89%af%e3%81%84linux%e3%82%b3%e3%83%9e/)
- [Unixデーモンの仕組み](https://engineering.otobank.co.jp/2015/03/12/daemon/)
