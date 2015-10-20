__[CentOS Project](http://www.centos.org/)__


## Network

#### nmcli
CLI
```sh
nmcli devices
```

#### nmtui
GUI

#### Restart
```sh
systemctl restart NetworkManager
```

### Proxy
__/etc/yum.conf__
```sh
proxy=http://proxyserver:8080
proxy_username=user
proxy_password=pass
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
