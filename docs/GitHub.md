## GitHub

[git.io](http://git.io/)
: ![Git.io](../img/git.io.png)
github.com ドメイン専用短縮URL。コマンドラインから使えばパスの文字列指定ができる。

[hub](https://github.com/github/hub)
: [GitHubで既存のissueに対してpull requestする - Fujimura](http://blog.fujimuradaisuke.com/post/21428021798/github-issue-pull-request)

[Sibbell](https://sibbell.com/about/)
: GitHub リリース通知

[RawGit](http://rawgit.com/)
: [GitHub上のファイルをCDNとして参照する \- Qiita](http://qiita.com/takanorig/items/89db46120d2ec171e3d8)


## GitHub Pages

- GitHub Help
    - [Creating Pages with the automatic generator · GitHub Help](https://help.github.com/articles/creating-pages-with-the-automatic-generator)
- [メモ: GitHub Pages & Jekyll](http://blog.nocorica.jp/2013/08/githubpages-jekyll/)

### Jekyll

- [Using Jekyll with Pages · GitHub Help](https://help.github.com/articles/using-jekyll-with-pages)

### Custom Domain

- GitHub Help
    - [Setting up a custom domain with GitHub Pages · GitHub Help](https://help.github.com/articles/setting-up-a-custom-domain-with-github-pages)
    - [Adding a CNAME file to your repository · GitHub Help](https://help.github.com/articles/adding-a-cname-file-to-your-repository)
    - [Tips for configuring a CNAME record with your DNS provider · GitHub Help](https://help.github.com/articles/tips-for-configuring-a-cname-record-with-your-dns-provider)
    - [About custom domains for GitHub Pages sites · GitHub Help](https://help.github.com/articles/about-custom-domains-for-github-pages-sites)
- [GitHub PagesでCustom Domainを利用する - Glide Note - グライドノート](http://blog.glidenote.com/blog/2011/12/20/how-to-use-custom-domain-on-github-pages/)

#### ムームードメイン

- [CNAME レコードの設定: ムームードメイン - Google Apps 管理者用 ヘルプ](https://support.google.com/a/answer/142022?hl=ja)
- ドメイン操作 / ムームーDNS / 対象のドメイン [変更]


## Gist
- [GistBox - The Beautiful Way to Organize Code Snippets](http://www.gistboxapp.com/)
- [コードスニペット管理ツール「GistBox」が良いね！とっても良いね！ | OZPAの表4](http://ozpa-h4.com/2014/03/20/gistbox/)
- [markdownで書かれたgistを奇麗に表示。 - Qiita [キータ]](http://qiita.com/hden@github/items/5dbd8f1d3b03345d6a33)
- [ちょっとしたHTMLはGitHub Gistに置いてbl.ocks.orgで表示するのがお手軽です - Qiita](http://qiita.com/hnakamur/items/ad1346bc9cfb0288ff60)
    0. index.html というファイル名でGistを作成します。
    0. あとは、GistのURLの https://gist.github.com を http://bl.ocks.org に置き換えてアクセスすれば表示されます。
    0. `http://bl.ocks.org/{{GitHubのアカウント}}/raw/{{GistのID}}`
- [Gistにあるテキストを読みやすく表示「gist.io」](http://www.moongift.jp/2013/01/20130106-2/)
    - [gist.io · #3135754](http://gist.io/3135754)
- [Gistub をインストールしてみた - akishin999の日記](http://d.hatena.ne.jp/akishin999/20130208/1360277414)
- [小さなスクリプトはGistで管理するようにした - Umi Uyuraのブログ](http://umi-uyura.hatenablog.com/entry/2015/09/30/063000)


## [HUBOT](https://hubot.github.com/)

- [GitHub社謹製！ bot開発・実行フレームワーク「Hubot」：連載｜gihyo.jp … 技術評論社](http://gihyo.jp/dev/serial/01/hubot)
    - 第1回　Hubotとは何か
    - 第2回　インストールとHello World
    - 第3回　Hubotを色々なサービスと繋げてみる
    - 第4回　Hubotのスクリプトを書いてみる
    - 第5回　実用的なHubotのスクリプトを書いてみる
- [チャットボットでチーム開発効率化入門（1）：GitHub製フレームワークHubotの概要とインストール、チャットアプリと連携する基本的な使い方 (1/2) - ＠IT](http://www.atmarkit.co.jp/ait/articles/1408/20/news035.html)


## [GitLab](https://about.gitlab.com/)
- [GitHubクローンのGitLabを５分でインストールした - アルパカDiary](http://d.hatena.ne.jp/toritori0318/20140523/1400863038)
- [Docker で 自動バックアップ付きの gitlabサイト を構築 - Qiita](http://qiita.com/essa/items/87b6ae3f892a79b9c560)
- [プライベートリポジトリ無制限のGitLab.comを試してみた - たけぞう瀕死ブログ](http://takezoe.hatenablog.com/entry/2016/02/21/011641)
- [GitLab CE Omnibus のインストール - ダメ出し Blog](https://fumiyas.github.io/gitlab/install-omnibus.html)
- [GitLabで新しいユーザーをメールによる認証なしで登録したい - Qiita](http://qiita.com/ptiringo/items/249fc23c02484a485646)
- [Update | GitLab](https://about.gitlab.com/update/)


## GitBucket
[takezoe/gitbucket · GitHub](https://github.com/takezoe/gitbucket)

#### Install
```bash
### http://centos.sabakan.red/entry/2015/04/27/153821

# yum install -y java-1.8.0-openjdk java-1.8.0-openjdk-devel java-1.8.0-openjdk-headless

# yum install -y tomcat

# yum install -y wget

# wget -P /usr/share/tomcat/webapps/ https://github.com/takezoe/gitbucket/releases/download/3.7/gitbucket.war

# systemctl start tomcat

# yum install -y nmap

# nmap localhost

### http://qiita.com/Monota/items/bb99fa5e1aa661182862

# vi /etc/firewalld/services/tomcat.xml

<?xml version="1.0" encoding="utf-8"?>
<service>
  <short>Tomcat (HTTP)</short>
  <description>Tomcat HTTP Server.</description>
  <port protocol="tcp" port="8080"/>
</service>

# firewall-cmd --permanent --add-service=tomcat
# systemctl restart firewalld.service
# firewall-cmd --list-all
```
http://server:8080/gitbucket/
