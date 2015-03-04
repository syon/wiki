## Ubuntuのインストール
- [WindowsのVirtualBoxにUbuntu 13.04をインストールしてみた -VirtualBoxの使い方](http://pc-karuma.net/windows8-virtualbox-ubuntu-install/)

## 操作

<dl>
  <dt><code>Ctrl+Alt+矢印</code></dt>
  <dd>ワークスペース切り替え</dd>
</dl>

- [スクリーンショットを撮る | Memo on the Web](http://motw.mods.jp/Linux/screenshot.html)

### キーボード

- [Ubuntu 12.04 LTS で使えるキーボードショートカット一覧 - Sickly Life はてな版](http://d.hatena.ne.jp/itiri/20120512/1336829456)
- [Gnome端末をマウスや矢印キーに頼らずに使う方法 - コオンド・ビイフ](http://d.hatena.ne.jp/amajam/20120422/1335052384)

## 知識

- [Filesystem Hierarchy Standard - Wikipedia](http://ja.wikipedia.org/wiki/Filesystem_Hierarchy_Standard) Linuxのディレクトリ構造
- [WindowsのあのフォルダはUNIX/Linuxで言えばあそこだ - Qiita](http://qiita.com/yuba/items/669f718fe6e62dbaab19)

## Guest Additionsのインストール

- [MacBook AirにVirtualBoxを入れ仮想マシンにCentOS6.5(64)をインストールしRails環境を構築してHerokuにサンプルをデプロイするまでの手順 - Qiita](http://qiita.com/tosato3/items/a3d9c3316f9714fbb815)

VirtualBoxのメニューバー > デバイス > Guest Additions のCDイメージを挿入… Host+D

    $ mkdir /media/cdrom
    $ mount -r /dev/cdrom /media/cdrom
    $ cd /media/cdrom
    $ ls -l
    $ ./VBoxLinuxAdditions.run
    $ shutdown -r now

## 端末

### 端末（terminal : ターミナル）の起動

- ショートカットキー： Ctrl+Alt+T
- デスクトップ画面左上のDashホームをクリック → テキストボックスに「terminal」と入力 → 「端末」を選択

### 端末でのコマンド一覧

- → __[[UNIXコマンド|UNIX-command]]__
- [VIPでUbuntu!!@ ウィキ - 端末でのコマンド一覧](http://www37.atwiki.jp/ubuntuireyouze/pages/17.html)
- [Linuxコマンド集 - 【 hostname 】 ホスト名を表示，設定する：ITpro](http://itpro.nikkeibp.co.jp/article/COLUMN/20060227/230798/)

### 端末での操作

#### バックスクロール

- Shift + PageUp
- Shift + PageDown

#### .bashrcの再読込

    ~$ source .bashrc

### パッケージ

最新のパッケージリストを入手する

    $ sudo apt-get update

パッケージを探す

    $ apt-cache search ^vim

インストールする前にバージョン候補を調べる

    $ apt-cache policy vim

インストール

    $ sudo apt-get install vim

パッケージのアップグレード

    $ sudo apt-get upgrade

### アクセス権変更
- [Linuxコマンド集 - 【 chmod 】 ファイルやディレクトリのアクセス権を変更する：ITpro](http://itpro.nikkeibp.co.jp/article/COLUMN/20060227/230728/)

## ネットワーク

### IPアドレスの確認

inetアドレス の表示が自機のIPアドレス

    ifconfig

### ホストOSとゲストOSを繋ぐ 

- [VirtualBox上にインストールしたUbuntuにSSHで接続する | トリコロールな猫](http://www.nekotricolor.com/blog/2013/03/15/904/)
- [VirtualBox内のUbuntu にssh ,httpでアクセス | LAGRANGE BLOG](http://blog.earthyworld.com/archives/ubuntu-ssh-http/)  
「VirtualBoxマネージャー」ウィンドウにて、対象の仮想マシンを選択 → 設定 → ネットワーク → アダプター 1 → 割り当て: ブリッジアダプター

### Windows WORKGROUPへの参加

- [How to join Ubuntu to a Windows Workgroup - TechRepublic](http://www.techrepublic.com/blog/linux-and-open-source/how-to-join-ubuntu-to-a-windows-workgroup/)

<pre>
$ sudo apt-get install samba smbfs
</pre>
<pre>
$ vim /etc/samba/smb.conf  #vimの検索コマンド /workg

workgroup = WORKGROUP
</pre>
<pre>
$ sudo /etc/init.d/smbd restart
</pre>
<pre>
$ sudo testparm            #Once Samba has restarted, check your smb.conf for any syntax errors
</pre>

#### [Ubuntu 12.04 LTS - Sambaサーバー - フルアクセスの共有フォルダ作成 ： Server World](http://www.server-world.info/query?os=Ubuntu_12.04&p=samba)

#### Ubuntuのホスト名を変更する

再起動しても有効になる変更は、２箇所のファイルの変更が必要になります。

    $ sudo vim /etc/hostname
    
    ubuntu001

    $ sudo vim /etc/hosts
    
    127.0.0.1       localhost
    127.0.1.1       ubuntu001.localdomain ubuntu001 # この行を修正

    $ sudo /etc/init.d/networking restart

### IPアドレス 固定/DHCP

設定ファイル

    $ sudo vi /etc/network/interfaces

Ubuntu 固定IPアドレス設定例

    # The loopback network interface
    auto lo
    iface lo inet loopback

    # The primary network interface
    auto eth0
    iface eth0 inet static
    address 192.168.1.3
    netmask 255.255.255.0
    network 192.168.1.0
    broadcast 192.168.1.255
    gateway 192.168.1.1

Ubuntu DHCP IPアドレス取得設定例

    # The loopback network interface
    auto lo
    iface lo inet loopback
    # The primary network interface
    auto eth0
    iface eth0 inet dhcp

ネットワーク再起動

    $ sudo /etc/init.d/networking restart

### ポート開放確認
- [ubuntuによるポート開放についてubuntuはインストールすると... - Yahoo!知恵袋](http://detail.chiebukuro.yahoo.co.jp/qa/question_detail/q11105647616)

```sh
$ sudo ufw enable
```
80番ポートを開ける
```sh
$ sudo ufw allow 80/tcp
$ sudo ufw status
```

### プロセス・ポート確認

- [How to Find and Kill a Process that is Using a Particular Port in Ubuntu | Technology is good](http://geekbrigade.wordpress.com/2009/02/26/how-to-find-and-kill-a-process-that-is-using-a-particular-port-in-ubuntu/)

```bash
$ sudo netstat -lpn |grep :8080
```

### Proxy

#### システムに対する設定

左のバーにあるシステム設定 > ネットワーク > ネットワークプロキシ

#### ターミナルに対する設定

大文字で記述。消す場合は "" で。

    export HTTP_PROXY="http://hostname:port/"
    export HTTPS_PROXY="https://hostname:port/"
    export FTP_PROXY="ftp://hostname:port/"


### ルーティング

- [route - ルーティングテーブルの表示／設定を行う](http://www.atmarkit.co.jp/fnetwork/netcom/route/route.html)
- [Linuxコマンド集 - 【 route 】 ルーティング・テーブルを表示・設定する：ITpro](http://itpro.nikkeibp.co.jp/article/COLUMN/20060227/230874/)

例: 「デフォルトのインターフェースを eth1 とし、eth0 を解除する」

#### 一時的適用

    $ sudo route add -net default gw 172.20.10.1 eth1
    $ sudo route del -net default eth0

#### 恒久的適用

`/etc/network/if-up.d/static-routes`

    #!/bin/sh
    /sbin/route add -net default gw 172.20.10.1 eth1
    /sbin/route del -net default eth0

実行権限の付与

    $ sudo chmod +x /etc/network/if-up.d/static-routes

適用 ※一時的適用を実施済みの場合はなにかメッセージが返ってくる。rebootして確認する。

    $ sh /etc/network/if-up.d/static-routes

#### traceroute
ネットワークの経路情報を確認する
```sh
$ sudo apt-get install traceroute
```


## 環境構築

- [Ruby on Rails 3.2 を Ubuntu にインストールする手順をかなり丁寧に説明してみました - Rails 雑感 - Ruby on Rails with OIAX](http://www.oiax.jp/rails/zakkan/rails_3_2_installation_on_ubuntu.html)

### Synergy

    $ sudo apt-get install synergy

/etc/lightdm/lightdm.conf  の最後に追記

    [SeatDefaults]
    greeter-session=unity-greeter
    user-session=ubuntu
    greeter-setup-script=/usr/bin/synergyc -n clientname serveraddress

#### 再起動

    $ synergyc --restart -n clientname serveraddress

### Proxy Server (Squid)

- → [[Squid|squid-proxy]]

## エラー対処

- [Ubuntu Server 12.04: 警告「Setting locale failed」への対処法](http://d.hatena.ne.jp/tkrd/20120828/1346123699)  
sshで接続する際にローカルPCの環境変数がリモートホストに送信されていたのが原因  
ホスト側`/etc/ssh/ssh_config`の下記記述をコメントアウト

<pre>
#SendEnv LANG LC_*
</pre>

### 「システムプログラムの問題がみつかりました」ダイアログを表示されなくする

`/etc/default/apport`

    enabled=0

## TIPS

- [Ubuntu ファイルブラウザの設定を好みに変更する | Ubuntuアプリのいいところ](http://ubuntuapps.blog67.fc2.com/blog-entry-57.html)
- [Ubuntu Nautilus その9 - ファイル一覧の表示形式 - Ubuntu kledgeb](http://kledgeb.blogspot.jp/2012/07/ubuntu-nautilus-9.html)
    - アイコン（Ctrl + 1）
    - 一覧（Ctrl + 2）
    - コンパクト（Ctrl + 3）

#### UbuntuでいうWindowsのタスクマネージャのようなもの

    gnome-system-monitor