### 使用ポートチェック

<pre>
netstat -ano
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


## Batch

- [Windows TIPS：バッチ・ファイル中で日付をファイル名に使用する - ＠IT](http://www.atmarkit.co.jp/ait/articles/0405/01/news002.html)
- [コマンドプロンプトで複数のプログラムを一度に起動する](http://cmd-pro.com/m_start.html)
- [カレントディレクトリをバッチファイルのディレクトリにする - 強火で進め](http://d.hatena.ne.jp/nakamura001/20090203/1233652705)
<pre>
cd /d %~dp0
</pre>
