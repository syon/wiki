# node.js

[[nodejs.png|align=center]]

### Setup

* [Repository - なんなんなん行く？](https://sites.google.com/site/teyasn001/ubuntu-12-10/ripojitori)
* <code>npm</code>は含まれている模様

<pre>
$ sudo apt-get install software-properties-common
$ sudo add-apt-repository ppa:chris-lea/node.js
$ sudo apt-get update
$ sudo apt-get install nodejs
</pre>

### npm

<dl>
  <dt>npm install -gオプションの意味</dt>
  <dd>npm installで-gオプションを指定した場合はグローバルインストールと呼ばれ、Mac OS X環境では/usr/local/lib/node_modulesにライブラリがインストールされます。同時に同ディレクトリにパスが通るようになり、どこからでもコマンドが呼び出せるようになります。<br> ― <a href="http://d.hatena.ne.jp/replication/20110607/1307458180">npm installコマンドの-gオプションについて - 大人になったら肺呼吸</a></dd>
</dl>
