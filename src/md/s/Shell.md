---
slug: shell
title: Shell
layout: page.jade
---

## Keep up-to-date

### Homebrew

Homebrewのアップデート

    $ brew update

Homebrewでインストール済みのパッケージをアップグレード

    $ brew upgrade


## SSH
- [iCloudネットワーク経由で自宅のMacにリモートSSHアクセスする設定方法 ｜ ライフハッカー［日本版］](http://www.lifehacker.jp/2012/08/120801icloudmacssh.html)
- [iCloud を利用して自宅の Mac へ SSH する - talkabout](http://www.talkabout.jp/2012/10/icloud-mac-ssh.html)


## TIPS
- [bash スクリプトの先頭によく書く記述のおさらい | マネーフォワード エンジニアブログ](https://moneyforward.com/engineers_blog/2015/05/21/bash-script-tips/)
- [bashで覚えておきたいショートカットキー(キーバインド) | 俺的備忘録 〜なんかいろいろ〜](http://orebibou.com/2015/06/bash%E3%81%A7%E8%A6%9A%E3%81%88%E3%81%A6%E3%81%8A%E3%81%8D%E3%81%9F%E3%81%84%E3%82%B7%E3%83%A7%E3%83%BC%E3%83%88%E3%82%AB%E3%83%83%E3%83%88%E3%82%AD%E3%83%BC%E3%82%AD%E3%83%BC%E3%83%90%E3%82%A4/)


## [fish shell](http://fishshell.com/)

- [fishシェルがとても素晴らしかったので、お伝えします。 | megane9988のブログ](http://megane-blog.com/2014/12/15/1461)
- [fish-shellを使ってみませんか - Qiita](http://qiita.com/mtwtk_man/items/dde92d0a6024bc61fa58)
- [zsh から fish にした。 - yoshiori.github.io](http://yoshiori.github.io/blog/2015/11/03/from-zsh-to-fish/)

### install
- [Installing Fish · fisherman/fisherman Wiki](https://github.com/fisherman/fisherman/wiki/Installing-Fish)

```bash
$ brew install fish
$ echo "/usr/local/bin/fish" | sudo tee -a /etc/shells
$ chsh -s /usr/local/bin/fish
```

### config

```bash
# config file
$ vim .config/fish/config.fish
```

```bash
# reload config
$ source .config/fish/config.fish
```

#### writing config.fish

```bash
# .bashrc
export PATH=$HOME/.nodebrew/current/bin:$PATH

# config.fish (command like, space separated)
set PATH $PATH $HOME/.nodebrew/current/bin
```

### set export

```bash
set -gx http_proxy http://localhost:8080
```


### [Fisherman](http://fisherman.sh/)
- [Installing Fisherman · fisherman/fisherman Wiki](https://github.com/fisherman/fisherman/wiki/Installing-Fisherman)

### [oh-my-fish](https://github.com/oh-my-fish/oh-my-fish)
- [oh-my-fish/Themes.md at master · oh-my-fish/oh-my-fish](https://github.com/oh-my-fish/oh-my-fish/blob/master/docs/Themes.md)  
  テーマプレビュー集
