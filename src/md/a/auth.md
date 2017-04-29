---
slug: auth
title: 認証
layout: page.jade
---

## OAuth

- [OAuth 2\.0 全フローの図解と動画 \- Qiita](http://qiita.com/TakahikoKawasaki/items/200951e5b5929f840a1f)


## LDAP
- [LDAPとは何をするもの？ | Think IT（シンクイット）](http://thinkit.co.jp/free/tech/18/1/page/0/1)
- [PowerShellでLDAP | crossframe](http://crossframe.iiv.jp/20140810787/)

```bash
$path = "LDAP://ldapserver:389/OU=marketing,OU=employee,DC=example,DC=co,DC=jp"
$auth = [System.DirectoryServices.AuthenticationTypes]::FastBind
$user = "CN=88888888,OU=marketing,OU=employee,DC=example,DC=co,DC=jp"
$pass = "P@ssw0rd"
$entry = New-Object System.DirectoryServices.DirectoryEntry($path, $user, $pass, $auth)
$query = New-Object System.DirectoryServices.DirectorySearcher($entry,"(objectclass=*)")
$entries = $query.FindAll()
$entries | %{$_.Properties}
```
