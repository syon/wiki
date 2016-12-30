---
slug: nodejs
title: Node.js
layout: page.jade
---

![nodejs](/wiki/assets/img/nodejs.png)

http://nodejs.org


## Setup

### Setup on OSX | Windows
公式サイトからインストーラ使うのが手っ取り早い

#### nodebrew
- [hokaccha/nodebrew: Node.js version manager](https://github.com/hokaccha/nodebrew)

```bash
$ nodebrew install-binary latest
$ nodebrew install-binary stable
```

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

```bash
$ node -v
$ sudo npm cache clean -f
$ sudo npm install -g n
$ sudo n stable
$ node -v
```

#### npm
```bash
$ npm install -g npm
```
`ERR!`とか言われて`npm: command not found`となったら
```bash
$ curl -L https://npmjs.org/install.sh | sudo sh
```
※ 途中で`Password:`と聞かれる


## npm

<dl>
  <dt>npm install -gオプションの意味</dt>
  <dd>npm installで-gオプションを指定した場合はグローバルインストールと呼ばれ、Mac OS X環境では/usr/local/lib/node_modulesにライブラリがインストールされます。同時に同ディレクトリにパスが通るようになり、どこからでもコマンドが呼び出せるようになります。<br> ― <a href="http://d.hatena.ne.jp/replication/20110607/1307458180">npm installコマンドの-gオプションについて - 大人になったら肺呼吸</a></dd>
</dl>

#### No `sudo`
- [Introduction to npm - How To Node - NodeJS](http://howtonode.org/introduction-to-npm)

```bash
$ sudo chown -R $USER /usr/local
```

#### npm tips
- [npm semantic version calculator](http://semver.npmjs.com/)  
  `^2.2.1`とかの表記でどのバージョンにマッチするかがわかる

- グローバルにインストールしているパッケージ（直下のみ）
```bash
$ npm ls --depth=0 -g
```

- [Node.jsユーザーなら押さえておきたいnpm-scriptsのタスク実行方法まとめ - ICS MEDIA](https://ics.media/entry/12226)
- [npm で依存もタスクも一元化する \- Qiita](http://qiita.com/Jxck_/items/efaff21b977ddc782971)


## [Yarn](https://yarnpkg.com/)

- [npm互換のJavaScriptパッケージマネージャーYarn入門 \- ICS MEDIA](https://ics.media/entry/13838)


## npm packages

#### [npm-check-updates](https://github.com/tjunnone/npm-check-updates)
Find newer versions of package dependencies than what your package.json or bower.json allows
- [Node.jsアプリでのパッケージ更新確認 - Qiita](http://qiita.com/ksato9700/items/03e4cd49c55a9a61ef65)

#### [Socket.IO](http://socket.io/)
- [Socket.IOについてのメモ - y's note](http://ykmtblog.hatenablog.jp/entry/2015/04/08/201109)

#### [gm](http://aheckmann.github.io/gm/)
GraphicsMagick for node.js

#### [Vorlon.JS](http://vorlonjs.com/)
スクリプトタグを埋め込んでおくとリモートデバッグ出来るツール。 Console、DOMツリーの表示、Modernizrを使ったサポート状況の表示などが出来る。 またpluginで拡張する事が出来る

#### [JSCS: JavaScript Code Style checker](http://jscs.info/)
JSCS is a code style linter/formatter for programmatically enforcing your style guide.


## [NW.js](http://nwjs.io/)

> NW.js is an app runtime based on Chromium and node.js.

- [nodeベースでGUIアプリを開発する「node-webkit」｜1 pixel｜サイバーエージェント公式クリエイターズブログ](http://ameblo.jp/ca-1pixel/entry-11765019318.html)
- [透過がサポートされたnode-webkit（NW.js）でガジェットを作ろう : アシアルブログ](http://blog.asial.co.jp/1350)


## Electron
- __[Electron](/wiki/electron/)__


## TIPS

- [Node\.jsからシェルコマンドを実行する \- BppLOG](http://tkybpp.hatenablog.com/entry/2016/04/25/163246)


## Articles

- [それでもNode.jsをやる // Speaker Deck](https://speakerdeck.com/yosuke_furukawa/soredemonode-dot-jswoyaru)
- [node.jsでファイル監視を手軽に行えるモジュール「chokidar」 | #GUNMAGISGEEK](http://shimz.me/blog/node-js/4123)
- [UIテストの自動化！Node.jsとSeleniumでWebアプリのUIテスト環境構築 – ICS LAB](http://ics-web.jp/lab/archives/5759)
- [Node.js - フロントエンド開発の３ステップ（npmことはじめ） - Qiita](http://qiita.com/hashrock/items/15f4a4961183cfbb2658)
- [2016年版 Node.jsで幸せになれる10の習慣 - Qiita](http://qiita.com/ksato9700/items/b21383e613b6dc308dca)
- [ES6時代のNode.js - Yahoo! JAPAN Tech Blog](http://techblog.yahoo.co.jp/javascript/nodejs/Node-es6/)
- [node.js - How to set NODE_ENV to production/development in OS X - Stack Overflow](http://stackoverflow.com/questions/9198310/how-to-set-node-env-to-production-development-in-os-x)
  - [dotenv](https://www.npmjs.com/package/dotenv)

#### Express
- [Node.js(Express4) + Heroku + PostgreSQLでTwitter botとサイト作った時のメモ(準備編) - Memo/](http://memo.brdr.jp/post/116650871021/node-js-express4-heroku-postgresql-twitter)
- [Node.js(Express4) + Heroku + PostgreSQLでTwitter botとサイト作った時のメモ(Tips編) - Memo/](http://memo.brdr.jp/post/117233031311/node-js-express4-heroku-postgresql-twitter)

#### Socket.IO
- [Node.js＋Socket.IOで作る、通信対戦ができるHTML5ゲームシステムの作り方 - Yahoo! JAPAN Tech Blog](http://techblog.yahoo.co.jp/javascript/nodejs/online_game_architecture_by_socketio/)


## Express

- [node\.js \- render svg file and serve it using express \- Stack Overflow](http://stackoverflow.com/questions/32546967/render-svg-file-and-serve-it-using-express)
```js
router.get('/status', function (req, res, next) {
  res.setHeader('Content-Type', 'image/svg+xml');
  res.sendFile(path.join(__dirname, '../views/status.svg'));
});
```

- [Node\.js\+Express\+MongoDBでREST APIをつくる \- Qiita](http://qiita.com/itagakishintaro/items/a1519998a91061cbfb1e)
