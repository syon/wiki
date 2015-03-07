# Squid

[[Squid.jpg|align=center]]

<div id="gollum-heading">
  <h4>
    <a href="http://www.squid-cache.org/">squid : Optimising Web Delivery</a>
  </h4>
</div>


## Install

#### Ubuntu
```sh
$ sudo apt-get install squid
```

#### OSX (Homebrew)
```sh
$ brew install squid
```


## Config

- [Proxyサーバの設定（squid）：tech.ckme.co.jp](http://tech.ckme.co.jp/proxy.shtml)
- [Squidによるプロキシサーバーの構築](http://linux.kororo.jp/cont/server/squid.php)

```sh
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

```sh
$ sudo service squid3 restart
```

### ポート開放

```sh
$ sudo ufw allow 3128
```

### 動作確認

```sh
$ sudo netstat -lpn | grep squid
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
- squid.conf
    - `/etc/squid3/squid.conf`
- error_directory
    - `/usr/share/squid3/errors/Japanese`

#### OSX (Homebrew)
- squid.conf
    - `/usr/local/etc/squid.conf`
- error_directory
    - `/usr/local/opt/squid/share/errors/ja-jp`


## Tips
- [Reload Squid Proxy Server Without Restarting Squid Daemon](http://www.cyberciti.biz/faq/howto-linux-unix-bsd-appleosx-reload-squid-conf-file/)


## Articles
- [su – root » Blog Archive » squidでURLフィルタ](http://www.p-runner.net/wordpress/?p=275)
- [squid で特定のサイトをアクセス拒否する](http://futuremix.org/2005/07/squid-access-deny)
- [Squidでニコ動を高速化＆時報回避する方法 » NezBlog](http://blog.nezweb.net/archives/118)
- [認証付きプロキシを強要されるOSXユーザがsquildで幸せになれた話 - Qiita](http://qiita.com/kmats@github/items/8a41c942e079c7a95919)