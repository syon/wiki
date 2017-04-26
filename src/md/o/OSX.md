---
slug: osx
title: OS X
layout: page.jade
---

## 導入

- [割とMac初心者向けの、Mac買ったらまずチェックしとくべき設定いろいろ | loveMac.jp](http://lovemac.jp/blog/1298/)
0. （はじめに）システム環境設定ダイアログの出し方
0. トラックパッドの設定
0. バッテリー残量のパーセントを表示させる
0. メニューバーに日付を表示する
0. Dockの設定
0. メニューバーにある不要なアイコンを非表示に
0. コンピュータ名の変更
0. ファンクションキーを、F7でカタカナ、F10で半角英数字といった標準機能にする
0. Finderを使いやすくする
    0. デスクトップに表示させる項目の選択
    0. デスクトップのアイコンがきれいに並ぶようにする
    0. 新規Finderウィンドウで開かれるフォルダを選択
    0. ウィンドウのサイドバーに表示される項目を選択
    0. ファイルの拡張子を表示する
    0. ウィンドウの情報を表示させる
0. ファイアウォールの設定
0. Safariのタブの設定
0. ログイン時やスリープ後のパスワード入力を省略する

- [iCloud を利用して自宅の Mac へ SSH する - talkabout](http://www.talkabout.jp/2012/10/icloud-mac-ssh.html)


## 環境

- [MacBook Proを買って最初にしたこと](http://blog.akihiko.me/2015/03/01/mbp-first-step/)
- [OSX の開発環境を Ansible で自動構築する（El Capitan / Yosemite） - Shin x Hatena Blog](http://shin1x1.hatenablog.com/entry/osx-provisioning-with-ansible)
- [Mac OS Xの環境構築を自動化する(2016年度初旬編) ｜ Developers.IO](http://dev.classmethod.jp/server-side/ansible/automate-build-mac-osx-env-by-ansible/)

### Serverkit
- [ServerkitでMacの環境構築を自動化する - Qiita](http://qiita.com/r7kamura/items/591e96861f025fb22998)

### Homebrew

- [Homebrewを取り囲むセットアップシェル界隈の情勢（2016年5月版） - Qiita](http://qiita.com/shibukk/items/d2d3686ac576bcf497b2)

#### Install Homebrew
- http://brew.sh  
  インストール用Rubyコマンドをコピペしてターミナルで実行

- Keep up-to-date  
  → __[Shell](/wiki/shell/)__

- [homebrew/El_Capitan_and_Homebrew.md at master · Homebrew/homebrew · GitHub](https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/El_Capitan_and_Homebrew.md)  
  El Capitan で Homebrew を使うときの注意点等について

#### Homebrew Cask
- [エンジニア Mac アプリ 環境 おすすめ - mizchi's blog](http://mizchi.hatenablog.com/entry/2014/03/02/090517)
- [みんなhomebrew-caskって知ってるか？ - Qiita](http://qiita.com/ryurock/items/1432578d364985f6cb06)
- [caskroom/homebrew-cask](https://github.com/caskroom/homebrew-cask)

```bash
brew install caskroom/cask/brew-cask
brew install git

brew install zsh
curl -L http://install.ohmyz.sh | sh

brew install heroku-toolbelt
brew install ruby-build
brew install rbenv
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(rbenv init -)"' >> ~/.zshrc

brew cask install dropbox
brew cask install google-chrome
brew cask install github
brew cask install iterm2
brew cask install appcleaner
```

#### Homebrew Services
- [Homebrew Servicesを使ってサービスを管理する](http://rcmdnk.github.io/blog/2016/04/25/computer-mac-homebrew/)


## Network

- [Apple ソフトウェアの TCP ポート接続をテストする - Apple サポート](https://support.apple.com/ja-jp/HT203875)  
  Macをクライアントとして指定アドレスのポートをスキャン


## Tips
- [Mac必須！トラックパッドを更に便利にするアプリ「BetterTouchTool」 | nori510.com](http://nori510.com/archives/4208)
- [意外と知らないMacの裏技･テクニック集 - NAVER まとめ](http://matome.naver.jp/odai/2129888099522555301)
- [Macのプレビュー.appで写真の「Exif」情報を表示する方法 / Inforati](http://inforati.jp/apple/mac-tips-techniques/multimedia-hints/how-to-show-exif-data-of-a-photo-with-mac-preview-app.html)
- [ImageOptim — better Save For Web](http://imageoptim.com/) ◆Mac Exif 一括削除
- [知らない人は損してると思うMacの使い方](http://alfalfalfa.com/archives/1147302.html)
- [Geek Knowledge: （Linux等の）シェルスクリプトを Mac の Finder からダブルクリックで実行するには](http://hseisyu.blogspot.jp/2010/10/linux-mac-finder.html)
- [macOS Sierraでは隠しファイルを表示するショートカットキー「CMD\+Shift\+\.」がFinderでも利用可能に。 \| AAPL Ch\.](http://applech2.com/archives/macos-sierra-finder-cmd-shift-period-show-hidden-file.html)

### Launch on Startup
- __[Squid - syon/wiki](/wiki/squid-proxy/)__
- [MacOSX - Mac OSX で init.d のように Tomcat を自動起動する - Qiita](http://qiita.com/hidekuro/items/316abf8b359734227c88)
- [Mission Control キーバインド変更](https://twitter.com/ryo_dg/status/856374326869676032)

### launchctl・launchd
- [システムワイドなロケール設定 ～ Mac OS X (その2) - 彷徨えるフジワラ](http://d.hatena.ne.jp/flying-foozy/20140204/1391520123)
- [Setting environment variables via launchd.conf no longer works in OS X Yosemite/El Capitan? - Stack Overflow](http://stackoverflow.com/questions/25385934/setting-environment-variables-via-launchd-conf-no-longer-works-in-os-x-yosemite)
- [osx - Setting environment variables in OS X? - Stack Overflow](http://stackoverflow.com/questions/135688/setting-environment-variables-in-os-x)
- [Yosemiteアップデートでlaunchdが死亡した - retlet.net](http://retlet.net/log/2014/10/yosemite-launchd.html)


## Terminal

```bash
# Play sound
$ afplay /System/Library/Sounds/Glass.aiff
```


## Preferences

### Screen saver
- [JohnCoates/Aerial](https://github.com/JohnCoates/Aerial)


## 作業効率化
- [マウスを自在にコントロールするAppleScript - ザリガニが見ていた...。](http://d.hatena.ne.jp/zariganitosh/20120126/library_mouse_scpt)
- [ApplescriptとRubyでもう僕は移動しない - hp12c](http://d.hatena.ne.jp/keyesberry/20100315/p1)
- [テキスト入力が死ぬほどはかどるMacショートカットキー15個 | Find Job ! Startup](http://www.find-job.net/startup/mac-shortcut)
- [Sunskysoft - Shupapan｜Shupapan](http://sunsky3s.s41.xrea.com/shupapan/)  
  連番処理、検索・置換、文字変換、拡張子処理、タグリネームなどのリネーム処理を備えたリネームソフト
- [Macのアニメーションを速くすると快適 \- /](http://memo.brdr.jp/post/156787133366/mac%E3%81%AE%E3%82%A2%E3%83%8B%E3%83%A1%E3%83%BC%E3%82%B7%E3%83%A7%E3%83%B3%E3%82%92%E9%80%9F%E3%81%8F%E3%81%99%E3%82%8B%E3%81%A8%E5%BF%AB%E9%81%A9)


## クリーン
- [超快適！たまにはMacをクリーニングして新品の頃の快適さを手に入れよう！ - Mokosoft開発者ブログ](http://blog.mokosoft.com/entry/2014/02/06/173706)

### Disk Inventory X
ディスクの使用領域を解析し、どのフォルダやファイルがどれだけのスペースを占めているかというのが、グラフィカルに調べることができます

### Disk Diag
よく不要ファイルとしてあげられる例を元に、ディスク内の不要ファイルをピックアップしてくれます

### App Cleaner
アプリが保存している関連ファイルを抽出し、すべてを削除することが可能です

### Onyx
アクセス権を修復する

### その他
- デスクトップをクリーニングする
- ディスクユーティリティでディスクを修復する
