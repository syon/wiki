# Node.js

[[nodejs.png|align=center]]

http://nodejs.org


## Setup

### Setup on OSX

公式サイトからインストーラ使うのが手っ取り早い

### Setup on Ubuntu

* [Repository - なんなんなん行く？](https://sites.google.com/site/teyasn001/ubuntu-12-10/ripojitori)
* <code>npm</code>は含まれている模様

<pre>
$ sudo apt-get install software-properties-common
$ sudo add-apt-repository ppa:chris-lea/node.js
$ sudo apt-get update
$ sudo apt-get install nodejs
</pre>

### Update

- [npmでnode.jsのアップグレード - Qiita](http://qiita.com/_shimizu/items/26589028ed3ea7e5b359)

```bash
$ sudo npm cache clean -f
$ sudo npm install -g n
$ sudo n stable
$ node -v
```


## npm

<dl>
  <dt>npm install -gオプションの意味</dt>
  <dd>npm installで-gオプションを指定した場合はグローバルインストールと呼ばれ、Mac OS X環境では/usr/local/lib/node_modulesにライブラリがインストールされます。同時に同ディレクトリにパスが通るようになり、どこからでもコマンドが呼び出せるようになります。<br> ― <a href="http://d.hatena.ne.jp/replication/20110607/1307458180">npm installコマンドの-gオプションについて - 大人になったら肺呼吸</a></dd>
</dl>


## Articles

- [それでもNode.jsをやる // Speaker Deck](https://speakerdeck.com/yosuke_furukawa/soredemonode-dot-jswoyaru)
- [node.jsでファイル監視を手軽に行えるモジュール「chokidar」 | #GUNMAGISGEEK](http://shimz.me/blog/node-js/4123)

#### Socket.IO
- [Node.js＋Socket.IOで作る、通信対戦ができるHTML5ゲームシステムの作り方 - Yahoo! JAPAN Tech Blog](http://techblog.yahoo.co.jp/javascript/nodejs/online_game_architecture_by_socketio/)
