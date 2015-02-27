# Squid

## Install

Ubuntu
```sh
$ sudo apt-get install squid
```

OSX (Homebrew)
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
