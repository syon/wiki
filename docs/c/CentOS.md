---
slug: centos
title: CentOS
layout: page.jade
---

__[CentOS Project](http://www.centos.org/)__


## Settings
- [CentOSで各種ビープ音を鳴らさないようにする - Qiita](http://qiita.com/kataring/items/f3f8dda51c671c4df2e4)

```bash
# Temporary
modprobe -r pcspkr

# Permanently
echo blacklist pcspkr >> /etc/modprobe.d/blacklist
```

## Update
- [Automatic Security Updates: CentOS - Servers for Hackers](https://serversforhackers.com/video/automatic-security-updates-centos)
- [yum clean コマンドでキャッシュ削除・アップデートのチェックと実行 〜 CentOS6 | EasyRamble](http://easyramble.com/yum-clean-and-update.html)


## Network

#### nmcli
CLI
```bash
nmcli devices
```

#### nmtui
GUI

#### Restart
```bash
systemctl restart NetworkManager
```

### Proxy
__/etc/yum.conf__
```bash
proxy=http://proxyserver:8080
proxy_username=user
proxy_password=pass
```

### Hosts
```bash
/etc/hosts
```

### Port・Firewall
- [CentOS7でポートを開放する方法。 - プログラミングで飯を食え。腕をあげたきゃ備忘録！](http://senoway.hatenablog.com/entry/2015/02/11/142139)
- [CentOS７ ファイアウォール停止方法 | server-memo.net](http://www.server-memo.net/centos-settings/centos7/firewalld-stop.html)


## TIPS

### Using Filer
```bash
xdg-open .
```


## Ruby

- [rbenv を使って ruby をインストールする(CentOS編) - Qiita](http://qiita.com/inouet/items/478f4228dbbcd442bfe8)
- [Ruby1.9.3をインストールしたときのいろいろなエラー - yokochiの開発メモ](http://d.hatena.ne.jp/the_yokochi/20111127/1322382198)

```bash
yum -y install gcc
yum -y install make
yum -y install gcc-c++
yum -y install zlib-devel
yum -y install httpd-devel
yum -y install openssl-devel
yum -y install curl-devel
```
