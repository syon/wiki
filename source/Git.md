- [Git の diff を美しく表示するために必要なたった 1 つの設定 #git - 詩と創作・思索のひろば (Poetry, Writing and Contemplation)](http://motemen.hatenablog.com/entry/2013/11/26/Git_%E3%81%AE_diff_%E3%82%92%E7%BE%8E%E3%81%97%E3%81%8F%E8%A1%A8%E7%A4%BA%E3%81%99%E3%82%8B%E3%81%9F%E3%82%81%E3%81%AB%E5%BF%85%E8%A6%81%E3%81%AA%E3%81%9F%E3%81%A3%E3%81%9F_1_%E3%81%A4%E3%81%AE%E8%A8%AD)

- [GitHubクローンのGitLabを５分でインストールした - アルパカDiary](http://d.hatena.ne.jp/toritori0318/20140523/1400863038)

## Tutorials

- [Try Git In Your Browser](https://github.com/blog/1183-try-git-in-your-browser)
- [Learn Git Branching](http://k.swd.cc/learnGitBranching-ja/)

## Tips

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