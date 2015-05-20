## 記法

#### コメント
> REMの代わりに、GOTOで使用するラベルを定義するために用いるコロン(:)を応用することで、コロン(:)で始まる行をコメント行にすることができる。
> コロン(:)の後ろに続く文字列がラベルとして使用されない限りは意味のない行となるため、コロン(:)で始まっていればその後ろに続く文字は何でもOK。　下記のいずれの表記も文法上エラーとはならず、また意味のない行となるため、コメント行となる。
- [MS-DOSコマンドプロンプトTips - Programming/Tips - 総武ソフトウェア推進所](http://smdn.jp/programming/tips/msdos_cmd_tips/)


## TIPS

### 使用ポートチェック

<pre>
netstat -ano

netstat -ano | findstr /i :80
</pre>

<dl>
  <dt>-a</dt>
  <dd>現在のすべての接続を表示する</dd>
  <dt>-n</dt>
  <dd>出力をIPアドレスなど数値のみに抑制</dd>
  <dt>-o</dt>
  <dd>PID列を表示</dd>
</dl>

### 指定PIDからタスクを導く

<pre>
tasklist /svc /fi "PID eq プロセスID"
</pre>

### サービス一覧取得コマンド

http://d.hatena.ne.jp/moto0215/20081125/1227595010
<pre>
sc query state= all
</pre>
- "state= all"を指定しないとアクティブなサービスのみ表示
- スペース位置が重要で、`state=all`はNG


### 共有ファイルの接続状況

<pre>
net use
net use /?    ←ヘルプ
</pre>
- [＠IT：Windows TIPS -- Tips：netコマンドの使い方](http://www.atmarkit.co.jp/fwin2k/win2ktips/258netcommand/netcommand.html)

接続
<pre>
net use \\hostname\ipc$ /user:yourid yourpass
</pre>
切断
<pre>
net use \\hostname /delete
</pre>
- [＠IT：Windows TIPS -- Tips：アカウントを指定してIPC$共有リソースへ接続する](http://www.atmarkit.co.jp/fwin2k/win2ktips/394ipcshare/ipcshare.html)

### ルーティングテーブル

ネットワークに接続するためのインターフェイス一覧と、ネットワークまたはホストへ到達するための経路を示すルートテーブルを表示する。<br>
メトリック＝距離（ホップ数）。近い方ものが選択されるので、優先順位と読み替えればよい。
<pre>
route print
</pre>
- [route - ルーティングテーブルの表示／設定を行う](http://www.atmarkit.co.jp/fnetwork/netcom/route/route.html)
- [＠IT：Windows TIPS -- Tips：ルーティング・テーブルを操作する](http://www.atmarkit.co.jp/fwin2k/win2ktips/266routing/routing.html)

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
<pre>
cd /d %~dp0
</pre>
- [コマンドプロンプト - ディレクトリパスから最下のディレクトリ名を取得する。 - 日々量産](http://d.hatena.ne.jp/ryousanngata/20090913/1252824783)


## コマンド

### copy / xcopy / robocopy
- [コマンドプロンプト copy - [ファイルをコピーする]](http://www.k-tanaka.net/cmd/copy.php)
- [コマンドプロンプト xcopy - [ファイルをディレクトリ構造ごとコピーする]](http://www.k-tanaka.net/cmd/xcopy.php)
- [Windowsのコマンドラインでファイルコピーするならxcopyよりrobocopy - WEBお笑いエンジニアの日記](http://d.hatena.ne.jp/turkey_hate/20130712)

### setx
- [Windows - SETX コマンドで環境変数を永続的に設定する - Qiita](http://qiita.com/rohinomiya/items/cf5236678b3459da9017)
- [setxで環境変数の値を設定する（基本編） － ＠IT](http://www.atmarkit.co.jp/fwin2k/win2ktips/1003setx/setx.html)
- [uzulla/how_to_setup_path_on_windows · GitHub](https://github.com/uzulla/how_to_setup_path_on_windows)
