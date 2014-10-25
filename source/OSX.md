# OS X

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

## 環境

### Homebrew

#### Install Homebrew
- http://brew.sh  
  インストール用Rubyコマンドをコピペしてターミナルで実行

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


## Tips
- [Mac必須！トラックパッドを更に便利にするアプリ「BetterTouchTool」 | nori510.com](http://nori510.com/archives/4208)
- [意外と知らないMacの裏技･テクニック集 - NAVER まとめ](http://matome.naver.jp/odai/2129888099522555301)
- [Macのプレビュー.appで写真の「Exif」情報を表示する方法 / Inforati](http://inforati.jp/apple/mac-tips-techniques/multimedia-hints/how-to-show-exif-data-of-a-photo-with-mac-preview-app.html)
- [ImageOptim — better Save For Web](http://imageoptim.com/) ◆Mac Exif 一括削除
- [知らない人は損してると思うMacの使い方](http://alfalfalfa.com/archives/1147302.html)

## 作業効率化
- [マウスを自在にコントロールするAppleScript - ザリガニが見ていた...。](http://d.hatena.ne.jp/zariganitosh/20120126/library_mouse_scpt)
- [ApplescriptとRubyでもう僕は移動しない - hp12c](http://d.hatena.ne.jp/keyesberry/20100315/p1)
- [テキスト入力が死ぬほどはかどるMacショートカットキー15個 | Find Job ! Startup](http://www.find-job.net/startup/mac-shortcut)
- [Sunskysoft - Shupapan｜Shupapan](http://sunsky3s.s41.xrea.com/shupapan/)  
  連番処理、検索・置換、文字変換、拡張子処理、タグリネームなどのリネーム処理を備えたリネームソフト

## メンテナンス

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