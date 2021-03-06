### [nginx](http://nginx.org/ja/)

nginx [えんじんえっくす] は Igor Sysoev によって作られた HTTP とリバースプロキシのサーバで、メールプロキシサーバでもあります。Rambler (RamblerMedia.com) を含むロシアの多くの高負荷サイトで５年以上も動いています。Netcraft によると、nginx は 2010 年 4 月時点で 4.70% の人気サイトでサーバーとして、もしくはプロキシとして利用されています。成功例としては FastMail.FM や Wordpress.com があります。

公式ドキュメント :: [Nginx Community](http://wiki.nginx.org/Main)
- [日本Nginxユーザ会が発足。開発者Igor Sysoev氏が語る、Nginxが生まれ、商用化された理由 － Publickey](http://www.publickey1.jp/blog/14/nginxigor_sysoevnginx.html)

### Guide

- [これから始める人のためのNginx（2）：Nginxのインストールと基本設定 (1/4) - ＠IT](http://www.atmarkit.co.jp/ait/articles/1407/24/news003.html)
- [入門！ nginx - tumblr](http://shim0mura.hatenadiary.jp/entry/20120110/1326198429)
- [nginx入門](http://www.slideshare.net/ttkzw/nginx-primer)

### Setup

オフィシャルパッケージによるインストール :: [InstallJa - Nginx Community](http://wiki.nginx.org/InstallJa)

- Red Hat/CentOS
- Debian/Ubuntu
- Win32  
  Windows版もインストールはzip解凍してexe起動するだけ。自動起動のためスタートアップにショートカットを入れた。

- [これから始める人のためのNginx（2）：Nginxのインストールと基本設定 (1/4) - ＠IT](http://www.atmarkit.co.jp/ait/articles/1407/24/news003.html)

### Memo

- Webコンテンツを置くドキュメントルートは`/usr/share/nginx/html/`

### Modules

- [h5ai · a modern HTTP web server index for Apache httpd, lighttpd, nginx and Cherokee · larsjung.de](http://larsjung.de/h5ai/)  
  ApacheとかNginxの「Index of 〜」ページをキレイにするやつ

### Tips

- [Nginx導入時、サクッと対応しておくと良いかもしれない - Qiita](http://qiita.com/kidachi_/items/985efebba639713c562e)
- [Ruby - AWSで、unicorn + nginx + sinatra を動かしてみる - Qiita](http://qiita.com/konpyu/items/3ba3774bcde226d7d07d)  
  nginxをリバースプロキシとして前に立ててからリクエストをunicornに流す
- [\[Ruby\] Sinatra + PostgreSQL + Unicorn な Web サーバーを Heroku に構築する ｜ Developers.IO](http://dev.classmethod.jp/server-side/ruby-on-rails/sinatra-postgresql-unicorn-on-heroku/)
- [nginx(エンジンエックス)をWindows上で動かして、SSLとリバースプロキシーの実験をした - 檜山正幸のキマイラ飼育記](http://d.hatena.ne.jp/m-hiyama/20100126/1264472381)
- [nginx - 我々はどのようにして安全なHTTPS通信を提供すれば良いか - Qiita](http://qiita.com/harukasan/items/fe37f3bab8a5ca3f4f92)
- [これから始める人のためのNginx（1）：高速・軽量・高機能……Nginxの基礎知識 (1/2) - ＠IT](http://www.atmarkit.co.jp/ait/articles/1406/17/news013.html)
- [nginxパフォーマンスチューニング〜静的コンテンツ配信編〜 - Qiita](http://qiita.com/cubicdaiya/items/2763ba2240476ab1d9dd)
- [NginxでSSLの評価をA+にする手順 - 9mのブログ](http://blog.kksg.net/posts/nginx-secure-ssl)
- [Nginx導入時、サクッと対応しておくと良いかもしれない - Qiita](http://qiita.com/kidach1/items/985efebba639713c562e)
- [【翻訳】NginxでHTTPS：ゼロから始めてSSLの評価をA+にするまで（Part 2） -設定、Ciphersuite、パフォーマンス | POSTD](http://postd.cc/https-on-nginx-from-zero-to-a-plus-part-2-configuration-ciphersuites-and-performance/)
- [Let’s EncryptとNginx : セキュアなWebデプロイメントの現状 | インフラ・ミドルウェア | POSTD](http://postd.cc/secure-web-deployment-with-lets-encrypt-and-nginx/)
