- [第1回　zshで広がる世界：zshで究極のオペレーションを｜gihyo.jp … 技術評論社](http://gihyo.jp/dev/serial/01/zsh-book/0001)
- [Zsh 入門者のための超速設定ガイド - Qiita](http://qiita.com/uasi/items/c4288dd835a65eb9d709)

### Setup

- [ヾ(oﾟωﾟo)ﾉﾞbashからzshに移行して2014年を迎えよう！［ログインシェル］ - Qiita](http://qiita.com/harapeko_wktk/items/47aee77e6e7f7800fa03)

<pre>
$ brew update         Homebrewのアップデート
$ brew install zsh    zshインストール
$ cat /etc/shells     インストールされてるシェルとパスの確認
$ chsh -s /bin/zsh    デフォルトのシェルを変更
</pre>

### Settings

#### oh-my-zsh

    % curl -L http://install.ohmyz.sh | sh

##### ZSH_THEME

- [Themes · robbyrussell/oh-my-zsh Wiki · GitHub](https://github.com/robbyrussell/oh-my-zsh/wiki/themes)
- [zshthem.es](http://zshthem.es/all/)

#### 非標準コマンド補完 zsh-completions

.zshrc の最後

    # zsh-completions
    fpath=(/usr/local/share/zsh-completions $fpath)
    
    # 補完機能を有効にする
    compinit -u

### .zshrc

- [zshの設定メモ - Webtech Walker](http://webtech-walker.com/archive/2008/12/15101251.html)

### TIPS

前のディレクトリに戻る

    $ cd -

[ディレクトリ履歴](https://twitter.com/naoya_ito/status/453121315898003456)

    $ cd -<tab>

[ディレクトリ補完候補の選択](https://twitter.com/naoya_ito/status/453123154370510849)

    <tab><tab>

[コマンド履歴・インクリメンタル検索](https://twitter.com/naoya_ito/status/453122024836038656)

    control + R

undo

    control + U

Clear

    control + L

その他

- [Twitter / naoya_ito: じゃああれか、みんなシェルで 2ch 見れるって知らないのか ...](https://twitter.com/naoya_ito/status/453127011146289153)
