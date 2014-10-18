wiki
====

### 本家リモートリポジトリに追随する

```bash
☁ gollum [master] git remote
origin
☁ gollum [master] git remote add upstream git://github.com/gollum/gollum.git
☁ gollum [master] git pull --rebase upstream master
:
☁ gollum [master] git pull origin master
:
☁ gollum [master] git push origin master
:
☁ gollum [master] git remote remove upstream
☁ gollum [master]
```
