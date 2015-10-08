## Install

### Package Control
- __[Installation - Package Control](https://packagecontrol.io/installation)__  
Edit the install code:
```sh
- ( urllib.request.ProxyHandler()) );
+ ( urllib.request.ProxyHandler({'http': 'http://<user>:<pass>@<proxyserver>:<port>'})) );
```

### Proxy

- App
    - `Preferences` > `Settings - User`
- Package Control
    - `Preferences` > `Package Settings` > `Package Control` > `Settings - User`

```js
{
    "http_proxy": "http://proxyserver:8080",
    "https_proxy": "http://proxyserver:8080",
    "proxy_username": "myname",
    "proxy_password": "mypassword",
    :
```


## Usage
<dl>
  <dt>Install Package</dt>
  <dd>`Ctrl`+`Shift`+`P` → `Package Control: Install Package`</dd>
<dl>


## My Installing Packages

#### Japanize

- [SublimeText - Sublime Text を日本語化する(Mac) - Qiita](http://qiita.com/tak74/items/baa17a423c9969815c9f)

#### Theme - Cobalt2
- [wesbos/cobalt2](https://github.com/wesbos/cobalt2)
    - `Preferences` → `Settings - User`
```sh
"color_scheme": "Packages/Theme - Cobalt2/cobalt2.tmTheme",
"theme": "Cobalt2.sublime-theme",
```

#### SublimeLinter
- __[SublimeLinter-csslint](https://github.com/SublimeLinter/SublimeLinter-csslint)__
    - `$ npm install -g csslint`
- __[SublimeLinter-contrib-scss-lint](https://github.com/attenzione/SublimeLinter-scss-lint)__
    - `$ gem install scss_lint`
- __[SublimeLinter-jshint](https://github.com/SublimeLinter/SublimeLinter-jshint)__
    - `$ npm install -g jshint`

#### SassBeautify
- [badsyntax/SassBeautify · GitHub](https://github.com/badsyntax/SassBeautify)

#### Emmet
- `Please wait a bit while PyV8 binary is being downloaded`
    - [emmetio/pyv8-binaries · GitHub](https://github.com/emmetio/pyv8-binaries#readme)
- [Sublime Text2『hayaku』+『Emmet』で変わるセカイ | toybox-design.net](http://toybox-design.net/?p=488)

#### SideBarEnhancements
- [titoBouzout/SideBarEnhancements · GitHub](https://github.com/titoBouzout/SideBarEnhancements)

#### IMESupport
- [chikatoike/IMESupport · GitHub](https://github.com/chikatoike/IMESupport)

#### Alignment
プログラミングで変数や連想配列を定義する際に `=` の位置をそろえるパッケージ
- [Sublime Alignment – a Sublime Text Package by wbond](http://wbond.net/sublime_packages/alignment)
- [特におすすめしたい、Sublime Textのパッケージ - Build Insider](http://www.buildinsider.net/small/sublimetext/03)

### Articles
- [【追記】【寄せあつめ】今さらだけどSublime Text 2の基本とカスタマイズ【&Vim化】【4日目】 ｜ Developers.IO](http://dev.classmethod.jp/tool/html-corder-sublime-text-2-customize/)


## Settings



## Links
- [Sublime Text 2ってエディタがすごくイイ。Dreamweaverから乗り換えた時の初期設定とか使い方とかをメモ | Mnemoniqs Web Designer Blog](http://mnemoniqs.com/web/sublimetext2/)
- [Sublime Text 2 Tips and Tricks (Updated) - Tuts+ Code Tutorial](http://code.tutsplus.com/tutorials/sublime-text-2-tips-and-tricks--net-21519)
- [Sublime Text 2 Basics](http://www.slideshare.net/gaspanik/sublime-text-2-basics)
- [Steppin' out: Windows 版の Sublime Text 2 を使う](http://blog.segu.jp/2012/05/windows-sublime-text-2.html)
- [Sublime Text 2 の設定したメモ | SANOGRAPHIX](http://www.sanographix.net/2013/02/sublime-text-2/)
- [Sublime Text 3使い始めた | Border/memo](http://brdr-mmrndm.tumblr.com/post/78942938554/sublime-text-3)
- [Sublime Text3で構文エラーをチェックするプラグインが超絶便利 | 株式会社LIG](http://liginc.co.jp/web/js/73704)  
  SublimeLinter
- [Sublime Text 2, 3の使いやすいテーマのまとめ | コリス](http://coliss.com/articles/freebies/freebies-sublime-text-themes-2014-newyear.html)
- [Sublime Text 3をShift_JISとかEUC-JPに対応させるプラグイン - MEMOGRAPHIX](http://memo.sanographix.net/post/80745994080)
- [Sublime textでコードをなるべく楽に綺麗に書くための機能紹介 3つ | megane9988のブログ](http://megane-blog.com/2014/08/15/1284)
- [プログラミングやマークアップで特に役立つ、Sublime Textの標準機能 - Build Insider](http://www.buildinsider.net/small/sublimetext/02)
- [Sublime Text 3 で日本語を検索したとき文字が消える不具合を直す - MEMOGRAPHIX](http://memo.sanographix.net/post/101061111635)
- [[Sublime Text]お気に入りテーマ・ショートカット・パッケージ｜Sublime Text Advent Calendar 2014 | tipsBear](http://tipsbear.com/sublime-thankyou/)
- [SublimeTextの教科書で紹介されてるプラグインまとめ - Qiita](http://qiita.com/maccotsan/items/f320036e19f8d3b798c1)
- [特におすすめしたい、Sublime Textのパッケージ - Build Insider](http://www.buildinsider.net/small/sublimetext/03)


## Theme
- [Predawn - A Sublime Text Theme](http://jamiewilson.io/predawn/)
- [コードが見やすく使いやすいSublime Text 2/3のテーマのまとめ | コリス](http://coliss.com/articles/build-websites/operation/work/sublime-text-themes-for-developer-2014.html)

## Tips
- [Sublime Textで今いるインデントに縦線を引く | Border/memo](http://brdr-mmrndm.tumblr.com/post/80456872825/sublime-text)