---
slug: squid-proxy
title: Squid
layout: page.jade
---

![Squid](/wiki/assets/img/Squid.jpg)

[squid : Optimising Web Delivery](http://www.squid-cache.org/)


## Install

#### Ubuntu
```bash
$ sudo apt-get install squid
```

#### OSX (Homebrew)
```bash
$ brew install squid
```


## Config

- [Proxyサーバの設定（squid）：tech.ckme.co.jp](http://tech.ckme.co.jp/proxy.shtml)
- [Squidによるプロキシサーバーの構築](http://linux.kororo.jp/cont/server/squid.php)

```bash
$ sudo vim /etc/squid3/squid.conf
```

    # Example rule allowing access from your local networks.
    # Adapt to list your (internal) IP networks from where browsing
    # should be allowed
    ### ここにプロキシサーバ接続許可ネットワークを記述 ###
                    :
                    :
    # Example rule allowing access from your local networks.
    # Adapt localnet in the ACL section to list your (internal) IP networks
    # from where browsing should be allowed
    http_access allow localnet  #コメント解除
    http_access allow localhost

    # And finally deny all other access to this proxy
    http_access deny all

```bash
$ sudo service squid3 restart
```

### ポート開放

```bash
$ sudo ufw allow 3128
```

### 動作確認

```bash
# Ubuntu
$ sudo netstat -lpn | grep squid
```
```bash
# OSX
$ lsof -i :3128
```

### エラーページのカスタマイズ
0. `squid.conf`の`TAG: error_directory`にて以下を追記
    - `error_directory /usr/share/squid3/custom_errors`
    - ※ "custom_errors" の名称や配置場所は任意
0. `/usr/share/squid3/`に `custom_errors`ディレクトリを作成
0. `ERR_ACCESS_DENIED`などのファイル（中身はHTML）を作成
    - `/usr/share/squid3/errors/Japanese`のファイル群を参考に
0. restart


## Default directory path

#### Ubuntu
- squid
    - `?`
- service
    - `service squid start`
    - `service squid stop`
- squid.conf
    - `/etc/squid3/squid.conf`
- error_directory
    - `/usr/share/squid3/errors/Japanese`

#### OSX (Homebrew)
- squid
    - `/usr/local/sbin/squid`
- squid.conf
    - `/usr/local/etc/squid.conf`
- error_directory
    - `/usr/local/opt/squid/share/errors/ja-jp`
- pid
    - `/usr/local/var/run/squid.pid`
- auth programs
    - basic (NCSA)  
      `/usr/local/opt/squid/libexec/basic_ncsa_auth`
    - digest  
      `/usr/local/opt/squid/libexec/digest_file_auth`

```bash
auth_param digest program /usr/local/opt/squid/libexec/digest_file_auth /usr/local/opt/squid/passwd
auth_param digest children 20 startup=0 idle=1
auth_param digest realm proxy
auth_param digest nonce_garbage_interval 5 minutes
auth_param digest nonce_max_duration 30 minutes
auth_param digest nonce_max_count 50

acl password proxy_auth REQUIRED

http_access allow password
```

## Tips
- [Reload Squid Proxy Server Without Restarting Squid Daemon](http://www.cyberciti.biz/faq/howto-linux-unix-bsd-appleosx-reload-squid-conf-file/)

`kill -HUP`だとうまく機能しなかった、`--help`も効かないのでそのうち調べる
```bash
$ kill $(cat /usr/local/var/run/squid.pid)
```
reload the squid after making changes to squid.conf file
```bash
$ /usr/local/sbin/squid -k reconfigure
```

### Black List / White List
- [squid で特定のサイトをアクセス拒否する](http://futuremix.org/2005/07/squid-access-deny)
- [squid で特定のサイトのみアクセスを許可する](http://futuremix.org/2005/07/squid-access-allow)
- [su – root » Blog Archive » squidでURLフィルタ](http://www.p-runner.net/wordpress/?p=275)

### Launch on Startup
- [Installing Squid Proxy Server on Mac OS X Snow Leopard | Biboroku](http://okomestudio.net/biboroku/?p=816)
```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
  <dict>
    <key>Label</key>
    <string>squid</string>
    <key>OnDemand</key>
    <false/>
    <key>ProgramArguments</key>
    <array>
      <string>/usr/local/sbin/squid</string>
    </array>
    <key>ServiceIPC</key>
    <false/>
  </dict>
</plist>
```
```bash
$ sudo launchctl load -w /Library/LaunchDaemons/squid.plist
```


## Memo
- `acl myaclname` で定義して `http_access allow myaclname` で利用
- `http_access` は上から評価され、マッチするとそこで切り上げる。  
  例えば allow localnet の下に allow password を記述しても、localnet 内の端末は常に許可される。


## Articles
- [Squidでニコ動を高速化＆時報回避する方法 » NezBlog](http://blog.nezweb.net/archives/118)
- [認証付きプロキシを強要されるOSXユーザがsquildで幸せになれた話 - Qiita](http://qiita.com/kmats@github/items/8a41c942e079c7a95919)
- [proxyサーバ squidでアクセス時に認証を要求する設定 パソコン鳥のブログ/ウェブリブログ](http://vogel.at.webry.info/201306/article_19.html)
- [Squidでプロキシサーバーを構築](http://www.serverlog.jp/squid-proxy/)
- [squid で上位プロキシへ要求を転送する（多段プロキシ）](http://www.geocities.jp/gronlijus/skill/other/squid/squid-forward.html)
- [squidを透過型プロキシとして使う時の設定](http://www.virment.com/squid-transparent-config/) ログ形式、DNSサーバ
