- [Git の diff を美しく表示するために必要なたった 1 つの設定 #git - 詩と創作・思索のひろば (Poetry, Writing and Contemplation)](http://motemen.hatenablog.com/entry/2013/11/26/Git_%E3%81%AE_diff_%E3%82%92%E7%BE%8E%E3%81%97%E3%81%8F%E8%A1%A8%E7%A4%BA%E3%81%99%E3%82%8B%E3%81%9F%E3%82%81%E3%81%AB%E5%BF%85%E8%A6%81%E3%81%AA%E3%81%9F%E3%81%A3%E3%81%9F_1_%E3%81%A4%E3%81%AE%E8%A8%AD)

- [GitHubクローンのGitLabを５分でインストールした - アルパカDiary](http://d.hatena.ne.jp/toritori0318/20140523/1400863038)

## Tutorials

- [Try Git In Your Browser](https://github.com/blog/1183-try-git-in-your-browser)
- [Learn Git Branching](http://k.swd.cc/learnGitBranching-ja/)

## Tips

- [Gitチートシート - Qiita](http://qiita.com/ktaro/items/1d8c8ae698a88b1d6f0f)
- [Twitter / naoya_ito: Atom の Contribution ガイドラインのこれ面白いな](https://twitter.com/naoya_ito/status/474357838710448128)
- [Gitはファイルの移動を追跡できない - 永遠に未完成](http://d.hatena.ne.jp/thinca/20090217/1234799036)
```bash
$ git log --follow
```
- [gitで複数のコミットを1つにまとめる - TIM Labs](http://labs.timedia.co.jp/2010/11/git-squash-commits.html)
    - コミットに対する指示は上から順番に処理される
    - 行を入れ替えればコミットの順序を入れ替えることができる
    - pick: このコミットをそのまま取り込む
    - fixup: このコミットでの変更内容を直前のコミットに合成する
    - squash: 合成対象の各コミットのログを編集することができる
```bash
$ git rebase -i HEAD~4
```

### Gitコミット時の名前とメールアドレス
#### グローバル設定を変更する
`ホームディレクトリ/.gitconfig`で定義する情報を変更するコマンド
```bash
$ git config --global user.name "John Doe"
$ git config --global user.email johndoe@example.com
```
#### ローカルリポジトリ設定を変更する
`リポジトリ/.git/config`で定義する情報を変更するコマンド
```bash
$ git config user.name "John Doe"
$ git config user.email johndoe@example.com
```
- [Gitコミットを任意の名前とメールアドレスで行うコマンド - Y-Ken Studio](http://y-ken.hatenablog.com/entry/git-commit-as-different-user)


## SSH認証キーの設定

GitHubをサンプルとした、サービスごとに鍵を分ける例。パスフレーズなし。

```bash
$ cd ~/.ssh
```
```bash
$ ssh-keygen -t rsa -C "sample@example.com"
Generating public/private rsa key pair.
Enter file in which to save the key (/Users/Syon/.ssh/id_rsa):
Enter passphrase (empty for no passphrase): <ENTER> ※パスフレーズなし
Enter same passphrase again: <ENTER> ※パスフレーズなし
```
```bash
$ ls
config          id_rsa          id_rsa.pub
```
```bash
$ chmod 600 id_rsa
```
```bash
$ (ファイル名変更)
```
```bash
$ ls
config          github_rsa      github_rsa.pub
```
`config`ファイルを編集
```bash
Host github.com
  Hostname github.com
  IdentityFile ~/.ssh/github_rsa
  User git

Host heroku.com
  Hostname heroku.com
  IdentityFile ~/.ssh/heroku_rsa
  User git

Host bitbucket.org
  Hostname bitbucket.org
  IdentityFile ~/.ssh/bitbucket_rsa
  User git
```
クリップボードに公開鍵コピー
```bash
$ pbcopy < github_rsa.pub
```

GitHub サイトの設定で `Add SSH key` して公開鍵を設置
- https://github.com/settings/ssh

接続確認
<pre>
$ ssh git@github.com
PTY allocation request failed on channel 0
Hi syon! You've successfully authenticated, but GitHub does not provide shell access.
Connection to github.com closed.
</pre>
完了

#### cf.
- [SSH認証キー](http://morizyun.github.io/blog/ssh-key-bitbucket-github/)
- [SSHの公開鍵を作成しGithubに登録する手順 - mon_sat at Co-Edo](http://monsat.hatenablog.com/entry/generating-ssh-keys-for-github)
- [GitHub: SSH鍵認証しているはずなのにパスワードを求められるを解決する方法 | deadwood](http://www.d-wood.com/blog/2013/08/29_4522.html)
