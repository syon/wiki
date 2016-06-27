---
slug: command-prompt
title: コマンドプロンプト
layout: page.jade
---

## Articles
- [Big Sky :: Windows ユーザは cmd.exe で生きるべき。](http://mattn.kaoriya.net/software/why-i-use-cmd-on-windows.htm)


## 記法

#### コメント
> REMの代わりに、GOTOで使用するラベルを定義するために用いるコロン(:)を応用することで、コロン(:)で始まる行をコメント行にすることができる。
> コロン(:)の後ろに続く文字列がラベルとして使用されない限りは意味のない行となるため、コロン(:)で始まっていればその後ろに続く文字は何でもOK。　下記のいずれの表記も文法上エラーとはならず、また意味のない行となるため、コメント行となる。
- [MS-DOSコマンドプロンプトTips - Programming/Tips - 総武ソフトウェア推進所](http://smdn.jp/programming/tips/msdos_cmd_tips/)


## TIPS

### Proxy

- [Windows7でコマンドプロンプトからの接続で、HTTPプロキシ設定が反映されない＼(^o^)／ - (=゜ω゜)ノぃょぅ　にっき](http://d.hatena.ne.jp/nyanplus/20120622/1340343289)
- [プロキシ サーバーを使用する環境にて Windows Update を実行すると通信エラーが発生する](https://support.microsoft.com/ja-jp/kb/2894304)
- [WinHTTPプロキシの設定方法 - maruko2 Note.](http://www.maruko2.com/mw/WinHTTP%E3%83%97%E3%83%AD%E3%82%AD%E3%82%B7%E3%81%AE%E8%A8%AD%E5%AE%9A%E6%96%B9%E6%B3%95)

### 使用ポートチェック

```bat
netstat -ano

netstat -ano | findstr /i :80
```

-a
: 現在のすべての接続を表示する

-n
: 出力をIPアドレスなど数値のみに抑制

-o
: PID列を表示

### 指定PIDからタスクを導く

```bat
tasklist /svc /fi "PID eq プロセスID"
```

### サービス一覧取得コマンド

- http://d.hatena.ne.jp/moto0215/20081125/1227595010
```bat
sc query state= all
```
- "state= all"を指定しないとアクティブなサービスのみ表示
- スペース位置が重要で、`state=all`はNG


### 共有ファイルの接続状況

```bat
net use
net use /?    ←ヘルプ
```
- [＠IT：Windows TIPS -- Tips：netコマンドの使い方](http://www.atmarkit.co.jp/fwin2k/win2ktips/258netcommand/netcommand.html)

接続
```bat
net use \\hostname\ipc$ /user:yourid yourpass
```
切断
```
net use \\hostname /delete
```
- [＠IT：Windows TIPS -- Tips：アカウントを指定してIPC$共有リソースへ接続する](http://www.atmarkit.co.jp/fwin2k/win2ktips/394ipcshare/ipcshare.html)

### ルーティングテーブル

ネットワークに接続するためのインターフェイス一覧と、ネットワークまたはホストへ到達するための経路を示すルートテーブルを表示する。  
メトリック＝距離（ホップ数）。近い方ものが選択されるので、優先順位と読み替えればよい。

```bat
route print
```

- [route - ルーティングテーブルの表示／設定を行う](http://www.atmarkit.co.jp/fnetwork/netcom/route/route.html)
- [＠IT：Windows TIPS -- Tips：ルーティング・テーブルを操作する](http://www.atmarkit.co.jp/fwin2k/win2ktips/266routing/routing.html)

### ファイル検索
- [whereコマンドでファイルを探す － ＠IT](http://www.atmarkit.co.jp/fwin2k/win2ktips/1151where/where.html)


## バッチ

### 日付・時刻の取得

- [Windows TIPS：バッチ・ファイル中で日付をファイル名に使用する - ＠IT](http://www.atmarkit.co.jp/ait/articles/0405/01/news002.html)

※環境依存注意

```bash
set dt=%date:/=%
set yyyy=%dt:~-10,4%
set mm=%dt:~-4,2%
set dd=%dt:~-2,2%

set tm=%time: =0%
set hhmmss=%tm:~0,2%%tm:~3,2%%tm:~6,2%
set hhmm=%tm:~0,2%%tm:~3,2%
```

- [Windows TIPS：バッチ・ファイル中で日付をファイル名に使用する - ＠IT](http://www.atmarkit.co.jp/ait/articles/0405/01/news002.html)
- [コマンドプロンプトで複数のプログラムを一度に起動する](http://cmd-pro.com/m_start.html)
- [カレントディレクトリをバッチファイルのディレクトリにする - 強火で進め](http://d.hatena.ne.jp/nakamura001/20090203/1233652705)
```bash
cd /d %~dp0
```
- [コマンドプロンプト - ディレクトリパスから最下のディレクトリ名を取得する。 - 日々量産](http://d.hatena.ne.jp/ryousanngata/20090913/1252824783)

### CSV / TSV のループ

```bash
for /f "skip=1 tokens=1,2 delims=," %%i in (data.csv) do (
    echo %%i %%j
)
```
- `skip`はヘッダ飛ばす行数
- `tokens`は `1` `2` が `%%i` `%%j` に対応している
- `delims`のカンマにタブ文字を直接記述するとTSV対応できる。


## コマンド

### copy / xcopy / robocopy
- [コマンドプロンプト copy - [ファイルをコピーする]](http://www.k-tanaka.net/cmd/copy.php)
    - ディレクトリ区切りは `/` ではなく `\` を使用しないと妙な挙動になる
- [コマンドプロンプト xcopy - [ファイルをディレクトリ構造ごとコピーする]](http://www.k-tanaka.net/cmd/xcopy.php)
- [Windowsのコマンドラインでファイルコピーするならxcopyよりrobocopy - WEBお笑いエンジニアの日記](http://d.hatena.ne.jp/turkey_hate/20130712)

### setx
```bash
# ユーザー環境変数に値をセットする場合
setx http_proxy http://localhost:3128
# システム環境変数に値をセットする場合
setx /M http_proxy http://localhost:3128
```

- [Windows - SETX コマンドで環境変数を永続的に設定する - Qiita](http://qiita.com/rohinomiya/items/cf5236678b3459da9017)
- [setxで環境変数の値を設定する（基本編） － ＠IT](http://www.atmarkit.co.jp/fwin2k/win2ktips/1003setx/setx.html)
- [uzulla/how_to_setup_path_on_windows · GitHub](https://github.com/uzulla/how_to_setup_path_on_windows)

### Open Explorer
```bash
explorer <path>
```

#### easily use on Cmder
```bash
# path/to/cmder/bin/open.cmd
@ECHO OFF
explorer %1
@ECHO ON
```

```bash
# default Cmder alias for 'explorer .'
$ e.
```

### Edit hosts
```bash
@ECHO OFF
notepad %windir%/System32/drivers/etc/hosts
@ECHO ON
```
