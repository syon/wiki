## 基本

### Mouse Without Borders
- [キーボード、マウス共有ソフト「Mouse Without Borders」と「Synergy+」の比較 - みちしるべ](http://d.hatena.ne.jp/orangeclover/20111008/1318079712)
- [MicrosoftのMouse without Bordersでマウスとキーボードの共有を試してみた：少しでもパラノイアになってみる：ITmedia オルタナティブ・ブログ](http://blogs.itmedia.co.jp/kichi/2011/09/microsoftmouse--4617.html)

### Synergy
- [Synergy - ダウンロード](http://synergy-foss.org/ja/download/?list)

### 7-Zip
- [私のお好みPC設定 @ ウィキ - 7-Zip](http://www24.atwiki.jp/myfavoritepcsettings/pages/13.html)

### Google 日本語入力
- [無変換、変換キーでWindowsのIMEをMac風に操作する | karakaram-blog](http://www.karakaram.com/mac-ime)
- [『Google日本語入力』の覚えておきたい便利技10選 : ライフハッカー［日本版］](http://www.lifehacker.jp/2012/01/120104_gime.html)

### プロキシ自動認証 stone
- [stone - admin memo](https://sites.google.com/a/uzushio.org/admin/old/stone)
- [stone - PukiWiki](http://www.tylor.jp/index.php?stone)
- [JavaScript による Base64 エンコーダ/デコーダ](http://homepage3.nifty.com/georgei/hmetzger/base64.html)  user:pass 形式をエンコード

#### サービス化
stone.cfg

<pre>
proxy.example.com:8080/proxy 8080 "Proxy-Authorization: Basic A1b2C3d4E5f6G7"
</pre>

0. > cd C:\util\stone23xp
0. > stone -M install repeater -C C:\util\stone23xp\stone.cfg
0. > net start repeater
0. > services.msc
0. Stone repeater スタートアップの種類: 自動

#### サービス削除

0. stone -M remove repeater
0. OS再起動

※うまくいかないとき
- [アンインストール失敗などで残ったWindowsのサービスを削除する方法 | (仮) - パソコンに関する雑記blog](http://ub.blog85.fc2.com/blog-entry-287.html)
0. sc.exe delete repeater
0. OS再起動

## 操作性向上

### WindowsPager

仮想デスクトップ

- [WindowsPager](http://windowspager.sourceforge.net/)

### Switcher

ExposeをWindowsで実現

- [Switcher for Windows Vista](http://insentient.net/)

### Listary

- [窓の杜 - 【REVIEW】エクスプローラ上でいきなり文字をタイプしてファイルを絞り込める「Listary」](http://www.forest.impress.co.jp/docs/review/20100630_377542.html)

### bluewind

#### Windows7でbluewindを使う(Win+Space)

Windows7ではWin+SpaceがOSに割り当てられており、AutoHotKeyでそれを書き換えることで対応する。

bluewind / Users / (user) / bluewind.ini

※bluewind常駐終了時に設定が上書きされるので、起動している場合は終了させてから編集する。

<pre>
Call_key=65
Call_Mod=8
Call_S=Win+A
</pre>

bluewind.ahk

<pre>
;Win+Space bluewind
#space::SendInput #a
</pre>
→スタートアップにショートカット追加

<br />

### PhraseExpress
- [PhraseExpressの使い方まとめ - NAVER まとめ](http://matome.naver.jp/odai/2133712265981682501)

### CLCL
Excel2007使用時に警告「クリップボードを空にできません」が表示される。

CLCLのオプション > ウィンドウ から設定を追加する。
クラス名: XLMAIN 、「履歴に追加しない」にチェック

### Clibor
- [Cliborの詳細情報 : Vector ソフトを探す！](http://www.vector.co.jp/soft/winnt/util/se472890.html)
- [「コピー「と「貼り付け」を自在に操作できる高機能なクリップボード管理ツール :教えて君.net](http://www.oshiete-kun.net/archives/2014/05/post_1526.html)

### Everything

### [Preme for Windows](http://www.premeforwindows.com/)


## Keyboard
- [Apple KeyboardをWindowsで快適に？使う為のまとめ。](http://surumekuu.blog.shinobi.jp/Entry/13/)

[Hayate](http://frozenlib.net/hayate/)
: キーリピート高速化ソフト

### AutoHotKey
- [AutoHotKey](/AutoHotKey/)

### keyhac
Pythonで制御するキーアサインの制御ソフト

- [keyhac - craftware](https://sites.google.com/site/craftware/keyhac)
- [NTEmacs @ ウィキ - Windows の操作を emacs のキーバインドで行うための設定 （keyhac版）](http://www49.atwiki.jp/ntemacs/pages/25.html)
- [keyhac で親指徹底活用 - Wisteria::Diary](http://d.hatena.ne.jp/mobitan/20081129/1227802480)


## テキストエディタ

### サクラエディタ
- __[サクラエディタ](/Sakura-Editor/)__

### SublimeText2
- [「第0回 Sublime Text 2 勉強会」で紹介されたプラグインまとめ - The Powerful Code](http://powerful-code.com/blog/2012/11/plugins-for-st2/)
- [”恋に落ちるエディタ”「Sublime Text」 完全入門ガイド！ | デザイナーブログ | 株式会社LIG](http://liginc.co.jp/designer/archives/6774)
- [Windows版「Sublime text 2」で日本語をインライン入力する方法 | 株式会社WEB企画スタッフブログ](http://webkikaku.co.jp/staff/software/windows-sublime-text-2/)
- [Sublime Text 2ってエディタがすごくイイ。Dreamweaverから乗り換えた時の初期設定とか使い方とかをメモ | Mnemoniqs Web Designer Blog](http://mnemoniqs.com/web/sublimetext2/)
- [Sublime Textの地味に便利なショートカット5つ | Webデザインのタネ](http://blog.1dz.jp/?eid=805)
- [Emmetを使いこなすためのショートカットキー | DevAchieve](http://wada811.blogspot.com/2013/03/sublime-text-2-emmet-shortcut-key.html)


#### Emmet (Zen-Coding)
- [知らない人は遅れてる？新Zen-Coding Emmet | DECONCEPTER](http://log.deconcepter.jp/2012/10/emmet/)

## ブラウザ

### Google Chrome

- Adblock Plus [ABP Japanese Filters (ONLY for Japanese: see Support Policy) ]()
- Keyconfig
- SearchPreview
- Send to Instapaper
- Speed Dial 2
- TabMemFree
- はてなブックマーク GoogleChrome 拡張

## Excel

#### 設定
- クイックアクセスツールバー
- シート数
- ユーザー名

## 動画・音声関連

### ニコニコ動画 → FLV → mp3
0. ビデオIDを確認
0. ビデオID書き換え: http://www.nicozon.net/downloader.html?video_id=sm4030871
0. [SplitFLV](http://shoppers-jp.com/software/splitflv.html)でmp3抽出
