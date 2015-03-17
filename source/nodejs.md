# Node.js

[[nodejs.png|align=center]]

http://nodejs.org


## Setup

### Setup on OSX

公式サイトからインストーラ使うのが手っ取り早い

### Setup on Ubuntu

#### Install with: .tar.gz
公式サイトからダウンロードした`node-v0.12.0.tar.gz`を使ってインストール

```bash
$ tar -xzf node-v0.12.0.tar.gz
$ cd node-v0.x.x.tar.gz
$ ./configure
$ sudo make install
```
- [Node.js - Getting started on Ubuntu 14.04 (Trusty Tahr)](https://www.howtoforge.com/tutorial/nodejs-ubuntu-getting-started/)

#### Install with: NodeSource
NodeSource社のリポジトリからダウンロードしてインストール
- [NodeSource - Enterprise Node.js Training, Support, Software & Consulting, Worldwide](https://nodesource.com/blog/nodejs-v012-iojs-and-the-nodesource-linux-repositories)

```bash
# Note the new setup script name for Node.js v0.12
curl -sL https://deb.nodesource.com/setup_0.12 | sudo bash -

# Then install with:
sudo apt-get install -y nodejs
```

#### Install with: PPA Package
- [Ubuntu 14.04 に Node.jsをインストールする - Qiita](http://qiita.com/moris/items/281a588b9773357b27f7)

> 標準パッケージ: `nodejs` というコマンド名になってしまい困ったことになる  
> PPAリポジトリのパッケージ: 有志が最新版を入れてくれている  ※PPA: Personal Package Archives

<pre>
$ sudo add-apt-repository ppa:chris-lea/node.js
$ sudo apt-get update
$ sudo apt-get install nodejs
</pre>
- `npm`は含まれている模様


## Update `node` & `npm`
- __[Node.js と npm のアップデート – nocorica](http://blog.nocorica.jp/2015/03/nodejs-npm-update/)__

#### node
- [linux - How can I update Node.js and NPM to the next versions? - Stack Overflow](http://stackoverflow.com/questions/6237295/how-can-i-update-node-js-and-npm-to-the-next-versions)

```sh
$ node -v
$ sudo npm cache clean -f
$ sudo npm install -g n
$ sudo n stable
$ node -v
```

#### npm
```sh
$ npm install -g npm
```
`ERR!`とか言われて`npm: command not found`となったら
```sh
$ curl -L https://npmjs.org/install.sh | sudo sh
```
※ 途中で`Password:`と聞かれる


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
