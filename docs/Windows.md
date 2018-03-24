### shell commands

- → __[Windows / Shell Commands](/Windows/shell-cmd/)__

```bash
shell:startup
```


### 操作
- [オッサンのためのWindows 10講座　昔の使い方を早く捨てろ、慣れろ。 \(1/2\) \- ITmedia エンタープライズ](http://www.itmedia.co.jp/enterprise/articles/1607/16/news020.html)
- [知られざるワザ「Shift＋右クリック」でファイルのパスをコピーする方法 \- いまさら聞けないWindows 10のTips \- 窓の杜](http://forest.watch.impress.co.jp/docs/serial/win10tips/1056255.html)

### Look & Feel

- [Windows 7 でウィンドウの枠のサイズを調整する方法／カブドットコム証券](https://s10.kabu.co.jp/_mem_bin/howto/win7_frame.asp)

### クリーン

- [Windows 7 tips: hiberfil.sys と pagefile.sys を削除する : *n.on.log](http://site-ichijo.net/blog/archives/date/2009/0805-011604.php)

#### Temporary Internet Files

```batch
"%SystemRoot%\System32\config\systemprofile\AppData\Local\Microsoft\Windows\Temporary Internet Files"
```

#### 一時ファイル

```batch
%temp%
```
```batch
C:\Windows\Temp
```

#### ディスククリーンアップ

- Windows+R → `cleanmgr`

#### Windows Search
サービスの停止とインデックスファイルの削除

- Windows+R → `services.msc`
- Windows Search → 停止
- `C:\ProgramData\Microsoft\Search`フォルダを開く
- `C:\ProgramData\Microsoft\Search\Data\Applications\Windows` に進む。警告は続行。
- `Windows.edb`ファイルのみ削除


### Security

- [このゾーンからファイルを移動したり、コピーできるようにしますか？の警告を無効にする - maruko2 Note.](http://www.maruko2.com/mw/%E3%81%93%E3%81%AE%E3%82%BE%E3%83%BC%E3%83%B3%E3%81%8B%E3%82%89%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB%E3%82%92%E7%A7%BB%E5%8B%95%E3%81%97%E3%81%9F%E3%82%8A%E3%80%81%E3%82%B3%E3%83%94%E3%83%BC%E3%81%A7%E3%81%8D%E3%82%8B%E3%82%88%E3%81%86%E3%81%AB%E3%81%97%E3%81%BE%E3%81%99%E3%81%8B%EF%BC%9F%E3%81%AE%E8%AD%A6%E5%91%8A%E3%82%92%E7%84%A1%E5%8A%B9%E3%81%AB%E3%81%99%E3%82%8B)
- [[Windows7] 「これらのファイルは、コンピュータに害を及ぼす可能性があります」と表示されました « SEECK.JP サポート](http://kb.seeck.jp/archives/1115)


## ファイル共有

- [共有ファイルにアクセスできません - Windows 7 - 教えて！goo](http://oshiete.goo.ne.jp/qa/5653327.html)
- [\[Windows7\] 空パスワードを許可する方法 « SEECK.JP サポート](http://kb.seeck.jp/archives/5607)

#### 共有の詳細設定

コントロール パネル\ネットワークとインターネット\ネットワークと共有センター\共有の詳細設定

- ファイルとプリンターの共有
- パスワード保護共有

#### 共有の設定

1. エクスプローラで目的のフォルダーを右クリックし[共有]を選択
1. [詳細な共有]ボタンをクリック
1. [このフォルダを共有する]をチェックし、[アクセス許可]ボタンで、Everyoneの行で「フルコントロール」にチェックし[OK]

#### アクセス権の設定

1. エクスプローラで目的のドライブを右クリックし[プロパティ]を選択
1. [セキュリティ]タブで[編集]ボタンをクリック
1. [追加]ボタンをクリックし、選択するオブジェクト欄に Everyone と入力し[OK]
1. Everyoneの行で、「編集」や「フルコントロール」をチェック[OK]

## ネットワーク

### ポート開放確認
```bash
# PowerShell
PS C:\> $tc = New-Object System.Net.Sockets.tcpClient
PS C:\> $tc.connect("192.168.0.1", 80)
PS C:\> $tc.connected
True
PS C:\> $tc.close()
```

### ルーティング
- [＠IT：Windows TIPS -- Tips：ルーティング・テーブルを操作する](http://www.atmarkit.co.jp/fwin2k/win2ktips/266routing/routing.html)
- [スタティックルーティング ( route add とは )](http://www.infraexpert.com/study/routing4.html)
- [Anonymous weblog - PC and OS - Windows7のNIC2枚刺しのルーティング](http://black.mydns.jp/anon/blog/2012/09/pc-and-os---windows7nic2.html)

### アドホックモード通信

- [無線LAN - アドホックモード（ Windows 7の設定方法 ）](http://www.infraexpert.com/study/wireless26.html)

### SoftAP

- [Windows 7 SoftAPとは、SoftAPの設定手順](http://www.infraexpert.com/study/wireless48.html)  
  全体の流れが参考になる。
- [Windows 7新時代：第12回　使い勝手が大幅に向上したWindows 7のワイヤレス機能 (2/3) - ＠IT](http://www.atmarkit.co.jp/ait/articles/1005/27/news096_2.html)  
  コマンドまわり
- [無線LANルータ（Wi-Fiルータ）を使わずにiPhoneをWi-Fiに接続する方法! 【Windows 8 / 8.1 編】 PCを無線親機にする逆テザリング設定 | My Network Knowledge](http://nw-knowledge.blogspot.jp/2014/02/win8-8.1-softap-virtualwifi.html)  
  デバイスマネージャーのネットワークアダプターで「有効」にする。  
  初めてやったときは正常開始できたが、PC再起動したら開始できなくなってこれで解決した。
- [＜続編＞VAIOを無線ルーターにしてみる。。。 - 店長のつぶやき日記。。。](http://www.call-t.co.jp/blog/mt/archives/entry/014810.html)
  - SoftAPのIPv4プロパティ  
    `192.168.137.1` / `255.255.255.0`
- [softAPに接続できない｜Windows8.1](https://social.technet.microsoft.com/Forums/windows/ja-JP/a49fe871-380c-49bb-8dcf-267c694c42a6/softapwindows81?forum=w7itprogeneralja)  
  イーサネットのプロパティ＞共有タブ＞ホームネットワーク接続(H): のプルダウンが表示されない場合は、一旦チェックボックスをOFFにしてOKで閉じたあと再度プロパティを開くとプルダウンが表示される
- [【レビュー】PCを手軽に無線LANアクセスポイントへ変えることができる「HostedNetworkStarter」 - 窓の杜](http://www.forest.impress.co.jp/docs/review/20160418_753137.html)


## TIPS

### Administrator アカウント
- [Windows 8でAdministratorアカウントを有効にする ( ソフトウェア ) - みゃうのリカバリーをする前に - Yahoo!ブログ](http://blogs.yahoo.co.jp/akio_myau/46155167.html)

### キーボードショートカット
- [Windows のキーボード ショートカット](http://support.microsoft.com/kb/126449/ja)

### フリーソフト
- [情強がひた隠しにしているフリーソフトまとめ | ライフハックちゃんねる弐式](http://lifehack2ch.livedoor.biz/archives/51308816.html)

### メンテナンス
- [Windowsクリーンアップ＆メンテナンス大作戦！ 愛用Windowsに「本腰」の大掃除を : ライフハッカー［日本版］](http://www.lifehacker.jp/2012/04/120410windowscleanup.html)

### 資格情報
- [Windows CLIで資格情報を表示、作成、削除する～cmdkey.exe - 元「なんでもエンジニ屋」のダメ日記](http://nasunoblog.blogspot.jp/2015/03/How-to-access-the-Credential-Manager-from-CLI-cmdkey.html)

```batch
cmdkey /list

cmdkey /list:ターゲット名

cmdkey /add:ターゲット名 /user:******** /pass:********

cmdkey /delete:ターゲット名
```

### ドットファイル
- [Windowsエクスプローラーでドットファイルを作成する - Qiita](http://qiita.com/sgur/items/745e0ee02c69b50bf9e5)


## トラブルシューティング

- [「別のプログラムがこのフォルダーまたはファイルを開いているので、操作を完了できません。」を解決する \- Corredor](http://neos21.hatenablog.com/entry/2017/06/05/080000)
