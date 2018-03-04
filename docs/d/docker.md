---
slug: docker
title: docker
layout: page.jade
---

![docker](../img/docker.png)

### [Docker - Build, Ship, and Run Any App, Anywhere](https://www.docker.com/)

- [https://hub.docker.com](https://hub.docker.com/)

#### Boot2Docker

- __[Windowsな人がDockerを体験するのに最適な「Boot2Docker」 - X X X](http://syonx.hatenablog.com/entry/2014/09/21/060000)__

#### Dockership
- [Dockership](http://docker.sh/ip/)  
  Dockership is a tool for easily deploying Docker containers to one or multiple Docker servers.


## TIPS

#### イメージ名でコンテナを停止
- [Stopping docker containers by image name \- Ubuntu \- Stack Overflow](http://stackoverflow.com/questions/32073971/stopping-docker-containers-by-image-name-ubuntu)
```bash
#!/bin/sh
image=syon/irkit-gui
docker rm $(docker stop $(docker ps -a -q --filter ancestor=$image --format="{{.ID}}"))
```

#### すべてのコンテナを削除
```bash
docker rm `docker ps -a -q`
```

#### イメージの削除
```bash
docker rmi $(docker images | awk '/^<none>/ { print $3 }')
```

#### Clean
- [dockerのコンテナ・イメージを謎のコマンド群で消すのもいいけどdocker\-cleanコマンドもいいよ \- Qiita](http://qiita.com/Jey/items/8714c47fd839597a40a3)
- [Dockerの不要なimageやコンテナ消すのに変なスクリプトはいらないYO \- Qiita](http://qiita.com/teufelj/items/9e659c71e04304ed081e)

#### Tips articles
- [dockerメモ \- Qiita](http://qiita.com/panichi/items/3cb9fa8e44cae3f20e1f)
- [開発環境をDockerに乗せる方法とメリットを3ステップで学ぶチュートリアル \- Qiita](http://qiita.com/KeitaMoromizato/items/ae1a57fc62b41b942d71)

```bash
$ docker system prune --help

Usage:  docker system prune [OPTIONS]

Remove unused data

Options:
  -a, --all     Remove all unused images not just dangling ones
  -f, --force   Do not prompt for confirmation
      --help    Print usages
```

## News

- [Dockerに最適化したOSイメージをGoogle Compute Engineが提供開始。CoreOSも利用可能に － Publickey](http://www.publickey1.jp/blog/14/dockerosgoogle_compute_enginecoreos.html)
- [Docker、IBM、Microsoft、RedHatがGoogleのコンテナ管理フレームワークKubernetesにこぞって開発参加する理由 - Qiita](http://qiita.com/kazunori279/items/ebe8ea24601e606f8048)
- [Docker専用の軽量Linux「CoreOS」がついに安定版リリース。AWS、Google Compute Engine、さくらのクラウドなどで利用可能に － Publickey](http://www.publickey1.jp/blog/14/dockerlinuxcoreosawsgoogle_compute_engine.html)
- [［速報］VMwareがDockerと協業発表。エンタープライズにおけるコンテナ環境の実現へ。Kubernetesにも参加を表明。VMworld 2014 － Publickey](http://www.publickey1.jp/blog/14/vmwaredockerkubernetes.html)


## Introduction

- [超入門Docker：第1回　Dockerとは \- ＠IT](http://www.atmarkit.co.jp/ait/articles/1701/30/news037.html)


## Tutorial

- [Docker入門 (全11回) - プログラミングならドットインストール](http://dotinstall.com/lessons/basic_docker)
- [Public BetaになったDocker for Macを使ってみる ｜ Developers.IO](http://dev.classmethod.jp/server-side/docker-server-side/using-docker-for-mac-public-beta/)
- [Node.jsのマイクロサービスの構築を通してDockerを学ぶ – 前編 | プログラミング | POSTD](http://postd.cc/learn-docker-by-building-a-microservice-1/)
- [Node.jsのマイクロサービスの構築を通してDockerを学ぶ – 後編 | プログラミング | POSTD](http://postd.cc/learn-docker-by-building-a-microservice-2/)


## Dockerfile
- [Dockerfile のベストプラクティス — Docker\-docs\-ja 1\.9\.0b ドキュメント](http://docs.docker.jp/engine/articles/dockerfile_best-practice.html)
- [Dockerfile ベストプラクティス \(仮\) \- Qoosky](https://www.qoosky.io/techs/f38c112ca9)
- [DockerfileのONBUILD \| SOTA](http://deeeet.com/writing/2014/03/21/docker-onbuild/)
- [Dockerizing a Node\.js web app \| Node\.js](https://nodejs.org/en/docs/guides/nodejs-docker-webapp/)


## まとめ

- [dockerについて社内勉強会で話しました - 圧倒亭グランパのブログ](http://at-grandpa.hatenablog.jp/entry/2014/01/30/161032)
- [Dockerでnginxサーバー立ててみた。あとDockerの使い方とか。 - Less is Best](http://yss44.hatenablog.com/entry/2013/12/27/150920)
- [仮想環境構築に docker を使う - apatheia.info](http://apatheia.info/blog/2013/06/17/docker/)
- [これから始める「DockerでかんたんLAMP環境 for CentOS」 - さくらのナレッジ](http://knowledge.sakura.ad.jp/tech/1811/)
- [Dockerを勉強するための、Docker記事のまとめ](http://wslash.com/?p=5584)
- [5分で分かるDockerのキホン | Ryuzee.com](http://www.ryuzee.com/contents/blog/6952)
- [いまさら聞けないDocker入門（2）：ついに1.0がリリース！ Dockerのインストールと主なコマンドの使い方 (1/3) - ＠IT](http://www.atmarkit.co.jp/ait/articles/1406/10/news031.html)
- [[翻訳] Dockerについてよくある勘違い | TechRacho](http://techracho.bpsinc.jp/hachi8833/2014_06_16/17982)
- [Docker専用ツールのまとめ(PaaSとUI、OS、コンテナ管理ツール、ホスティングなど)](http://wslash.com/?p=5744)
- [Docker と LXC - Qiita](http://qiita.com/Surgo/items/709a07d68c6eafbad267)
- [「Docker」--その正体、そして人気の理由とは？ - ZDNet Japan](http://japan.zdnet.com/virtualization/sp/35052286/)
- [Dockerで遊んでみよっかー YAPC::Asia Tokyo 2014](http://www.slideshare.net/kazeburo/docker-yapcasia-tokyo-2014)
- [軽くて使いやすい仮想化技術 「Docker」の仕組みと　エンタープライズ開発における4つの活用事例 （1/6）：CodeZine](http://codezine.jp/article/detail/7894)
- [古賀政純の「攻めのITのためのDocker塾」：第30回 Docker Swarmを知る　複数の物理サーバでDocker環境をクラスタ化する方法 \(1/3\) \- ITmedia エンタープライズ](http://www.itmedia.co.jp/enterprise/articles/1610/19/news009.html)
- [忙しい人の5分で分かるDocker 2017年春Ver](https://www.slideshare.net/zembutsu/5-minuts-docker-2017)

#### Registry
- [社内用Docker環境をつくる〜Docker Registry on EC2とDocker for AWSについて〜 \| Recruit Jobs TECHBLOG](https://techblog.recruitjobs.net/development/docker-registry-on-ec2_and_docker-for-aws)

### Mac

- [Docker を Mac で使ってみた（Nodeアプリ例） ::ハブろぐ](http://havelog.ayumusato.com/develop/server/e601-docker_on_mac.html)

### Windows

- [Windows + Vagrant + VirtualBox + Docker - ✗✗✗](http://syonx.hatenablog.com/entry/2014/02/18/010757)
- [windowsでもansibleがしたいのでvagrant経由でdockerを使って二重仮想環境を構築する - After Coding](http://saisa.hateblo.jp/entry/2013/12/10/153651)
- [WindowsのVagrant上でDockerを使う - Yoshimopedia](http://yoshimov.com/tips/windows-vagrant-docker/)
