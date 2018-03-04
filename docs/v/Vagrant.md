---
slug: vagrant
title: Vagrant
layout: page.jade
---

![Vagrant](../img/vagrant.png)

## [Vagrant - Development environments made easy.](http://www.vagrantup.com/)

### [Vagrant Cloud](https://vagrantcloud.com/)

### Links

- [Vagrant入門 (全13回) - プログラミングならドットインストール](http://dotinstall.com/lessons/basic_vagrant)
- [Vagrant開発者 Mitchell Hashimoto氏に聞いた：「Vagrant」って何ぞ？（・o・） - ＠IT](http://www.atmarkit.co.jp/ait/articles/1307/22/news076.html)
- [Vagrant - naoyaのはてなダイアリー](http://d.hatena.ne.jp/naoya/20130205/1360062070)
- [Vagrant コトハジメ](https://gist.github.com/voluntas/5525719)
- [今更聞けない人の為の Vagrant 再入門 | School With Blog](http://blog.schoolwith.me/vagrant-re-introduction/)
- [Vagrant CloudのVagrant Shareを試してみたら凄すぎて鼻血出た - 憂鬱な世界にネコパンチ！](http://nekopunch.hatenablog.com/entry/2014/03/11/223250)

#### Related
- [Vagrant Manager](http://vagrantmanager.com/)

#### Windows
- [Vagrant で作ったり壊したりできる Windows 環境を手に入れるまでの手順 - てっく煮ブログ](http://tech.nitoyon.com/ja/blog/2014/02/20/vagrant-win-guest/)
- [WindowsでVagrantする - みんなのちからになりたい](http://ginzanomama.hatenablog.com/entry/2013/08/15/211532)
- [Windows 7 でVagrantでCent OS 6.3入れてみた - 僕の車輪の再発明](http://kazuph.hateblo.jp/entry/2013/02/05/234243)
- [Vagrant 入門 - Windows 上に Linux の仮想マシンを簡単に用意する - 僕は発展途上技術者](http://blog.champierre.com/973)

### 使い方メモ

#### Setup

    $ vagrant box add {title} {url}    # boxをurlから取得
    $ vagrant init {title}             # Vagrantfileを作成
    $ vagrant up                       # Vagrantfileの設定内容に基づいてVM起動
    $ vagrant halt                     # VM終了

box を変更した後は、Vagrantfile の内容を再度設定しなおす必要がある。  
usr/pw: vagrant/vagrant

#### Manage

    $ vagrant box list

#### SSH

    $ vagrant ssh
    $ vagrant ssh-config

SSHの鍵置き場は`~/.ssh/`。  
このディレクトリにある `config`, `known_hosts` 以外のものは鍵ファイルで、複数ある場合は`config`に登録しておく。  
```bash
Permission denied (publickey,password).
```
カッコ内はサーバ側が許可している認証方式。公開鍵認証 ("publickey")、パスワード認証 ("password")。


### Vagrantfile

#### ネットワークブリッジと固定IP

`:bridge`はホスト側に複数のネットワークがあるとき自動で選択するために指定する。

    config.vm.network "public_network", :ip => "192.168.0.111", :netmask => "255.255.255.0", :bridge => "eth0: Ethernet"
