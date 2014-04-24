### [nginx](http://nginx.org/ja/)

nginx [えんじんえっくす] は Igor Sysoev によって作られた HTTP とリバースプロキシのサーバで、メールプロキシサーバでもあります。Rambler (RamblerMedia.com) を含むロシアの多くの高負荷サイトで５年以上も動いています。Netcraft によると、nginx は 2010 年 4 月時点で 4.70% の人気サイトでサーバーとして、もしくはプロキシとして利用されています。成功例としては FastMail.FM や Wordpress.com があります。

公式ドキュメント :: [Nginx Community](http://wiki.nginx.org/Main)

#### Guide

- [入門！ nginx - tumblr](http://shim0mura.hatenadiary.jp/entry/20120110/1326198429)
- [nginx入門](http://www.slideshare.net/ttkzw/nginx-primer)

#### Setup

オフィシャルパッケージによるインストール :: [InstallJa - Nginx Community](http://wiki.nginx.org/InstallJa)

- Red Hat/CentOS
- Debian/Ubuntu
- Win32

#### Tips

- [Nginx導入時、サクッと対応しておくと良いかもしれない - Qiita](http://qiita.com/kidachi_/items/985efebba639713c562e)
- [Ruby - AWSで、unicorn + nginx + sinatra を動かしてみる - Qiita](http://qiita.com/konpyu/items/3ba3774bcde226d7d07d)  
  nginxをリバースプロキシとして前に立ててからリクエストをunicornに流す