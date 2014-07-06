# Yeoman

### [Yeoman - Modern workflows for modern webapps](http://yeoman.io/)

![Yeoman](http://yeoman.io/assets/img/workflow.1bf8.jpg)

### Yeomanとは

Google社が作成した総合開発ツール群です、「ヨーマン」と呼びます。公式サイトには MODERN WORKFLOWS FOR MODERN WEBAPPS (モダンWEBアプリケーションのためのモダンワークフロー) と記述されています。

Yeomanを使うことでコマンドラインからの対話形式で雛形（テンプレート）を作成する事ができるため、プロジェクトに適した雛形を作ることができます。またGruntやbowerといったツールと親和性が高いため、タスク実行やライブラリ管理も簡単に行うことができるようになります。

厳密な定義としては、YeomanはGrunt(タスクランナー)とBower(フロントエンドパッケージマネージャ)とyo(雛形作成ツール)を合わせた総合ツールの事を指します。

*[Yeoman入門(第一部、yoを使う) - from scratch](http://yosuke-furukawa.hatenablog.com/entry/2013/07/04/085814)*

### Setup

#### Error

##### アクセス権のエラー

<pre>
npm ERR! Error: EACCES, mkdir '/usr/lib/node_modules/generator-tmlib'
</pre>
対処
<pre>
$ sudo chown $USER /usr/lib/node_modules/
</pre>

### Grunt

- [Gruntを使ってプロジェクトを自動化する、Myタスクメモ | tipsBear](http://tipsbear.com/grunt-task-memo/)  
  丁寧な図解でわかりやすい解説

### Articles

- [Gruntで始めるWeb開発爆速自動化入門（終）：あなたのWeb開発人生を変えるYeoman、Bower、Yoのインストールと使い方 (1/3) - ＠IT](http://www.atmarkit.co.jp/ait/articles/1407/02/news040.html)
