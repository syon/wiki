---
slug: vue
title: Vue.js
layout: page.jade
---

## Official
- [Vue\.js](https://vuejs.org/)
- [Vue\.js (jp)](https://jp.vuejs.org/)


## Articles

- [Vue.js 大規模アプリケーションの構築 // Speaker Deck](https://speakerdeck.com/kazupon/vue-dot-js-da-gui-mo-apurikesiyonfalsegou-zhu)
- [Vue.jsとは | CodeGrid](https://app.codegrid.net/entry/vue-1)
- [Vue.js用のFluxライクなライブラリVuexを試してみる - Qiita](http://qiita.com/tomato360/items/b2f11a392bf8fb125610)
- [Vue.js 2.0のServer Side Renderingを試しつつ、軽くコードリーディングした - kitak.blog](http://kitak.hatenablog.jp/entry/2016/04/30/135441)


## TIPS

- [Vue\.js が templateURL をサポートしない理由 \- Vue\.js](https://jp.vuejs.org/2015/10/28/why-no-template-url/)
  - [javascript \- VueJs templating\. How to load external templates \- Stack Overflow](http://stackoverflow.com/questions/31633573/vuejs-templating-how-to-load-external-templates)
- [Vue\.js 2\.xのフィルタについて調べてみた \- Qiita](http://qiita.com/yutaro23/items/095cf66038bb9fabc094)
- [vue\.jsでpugとpostcssつかう \- Qiita](http://qiita.com/shuuhei/items/4852210d362d2e9022d7)
- [javascript \- Vue\.js v\-if for attributes \- Stack Overflow](http://stackoverflow.com/questions/36302148/vue-js-v-if-for-attributes)  
  ```html
  <table v-bind:attribute1="someMethod" attribute2="{{anotherMethod}}">
  ```
- [Vue\.js2\.x系で親から子コンポーネントにデータを渡す方法 \| Black Everyday Company](http://kuroeveryday.blogspot.jp/2016/10/vuejs-components-props.html)
- [vue\.jsでInfinite Scrollを実装する \- GeekFactory](http://int128.hatenablog.com/entry/2015/02/18/230206)
- [vuejsのちょっと便利なコンポーネント機能 \- Qiita](https://qiita.com/myLifeAsaDog/items/233f10591be8ff42cf1d)
  - 共通した親要素を使いまわしたい（スロット配信）
  - パラメーターによって使用するコンポーネントを変えたい（動的コンポーネント）
  - 複数のコンポーネントで、同じ処理を使いまわしたい（ミックスイン）


## UI Frameworks

[Storybook](https://storybook.js.org/)
: UI dev environment you'll love to use
- [Vue on Storybook // Speaker Deck](https://speakerdeck.com/kazupon/vue-on-storybook)

### Semantic UI
- __<mark>[vue\-cli with Semantic UI on webpack \- Qiita](http://qiita.com/syon/items/5e0e86ec9abb71935e36)</mark>__
- [How to use Semantic UI \+ VUECLI \- Help \- Vue Forum](https://forum.vuejs.org/t/how-to-use-semantic-ui-vuecli/424/3)
- [javascript \- Using vue\.js with semantic UI \- Stack Overflow](http://stackoverflow.com/questions/36676215/using-vue-js-with-semantic-ui)
- [v\-model value of styled checkbox doesn't update · Issue \#4769 · vuejs/vue](https://github.com/vuejs/vue/issues/4769)  
  Vue は hidden に対して効かないため、その対処法。

### UIKit

- [Vue\.jsとUIkitでつくるフロントエンド環境 \- Qiita](http://qiita.com/bobu_web/items/4daa20d3b4bd327ca91c)

### Element

- [Element \- A Desktop UI Toolkit for Web](http://element.eleme.io/static/banner-bg.75437e1.svg)


## UI Components

- [vue\-spinner](http://greyby.github.io/vue-spinner/)


## Dev

- [AtomのVue\.js関係プラグインまとめ \- Qiita](http://qiita.com/mrmr/items/f6927eb2fe5aa13a2f90)
- [Vue\.js 2\.2 Complete API Cheat Sheet](https://vuejs-tips.github.io/cheatsheet/)

[lakb248/vue\-pull\-refresh](https://github.com/lakb248/vue-pull-refresh)
: A pull down refresh component implement by vuejs


## vue-router

###  [vuejs/vuex\-router\-sync](https://github.com/vuejs/vuex-router-sync)

Effortlessly keep vue-router and vuex store in sync.

- [app\.js · vuejs/vue\-hackernews\-2\.0](https://github.com/vuejs/vue-hackernews-2.0/blob/master/src/app.js)  
  実例
- [vuex\-router\-syncを使ってgettersやactions,mutations内からroute情報を取得する \| Black Everyday Company](http://kuroeveryday.blogspot.jp/2016/12/vuex-router-sync.html)

### transition

- [Tumblr API \+ Vue\.jsでTumblrテーマを作った話 \- Qiita](http://qiita.com/ryo_dg/items/b2c030362241a20bc6bb)
- [Vue\.js page transition fade effect with vue\-router \- Stack Overflow](http://stackoverflow.com/questions/41221099/vue-js-page-transition-fade-effect-with-vue-router)  
  `transition name="hoge"` がCSSセレクタ接頭辞になる

### advanced

- [スクロールの振る舞い · GitBook](https://router.vuejs.org/ja/advanced/scroll-behavior.html)
  > 注意: この機能は HTML5 history モードでのみ動作します。
- [遅延ローディング · GitBook](https://router.vuejs.org/ja/advanced/lazy-loading.html)


## ディレクティブ

### v-for

- [リストレンダリング \- Vue\.js #テンプレートでの-v-for](https://jp.vuejs.org/v2/guide/list.html#テンプレートでの-v-for)  
  制御文として回したいときは `<template>` タグを使う。
  - [Vue\.jsでハマったところ（主にIE） \- Qiita](http://qiita.com/jshindo/items/67d3520b8fc6a6bb0af5)
  > `<table>`タグの中では`<template>`タグが使えない（IE）
```html
<ul>
  <template v-for="item in items">
    <li>{{ item.msg }}</li>
    <li class="divider"></li>
  </template>
</ul>
```

### v-cloak

- [体で覚えるVue\.js \- ディレクティブ編 〜 JSおくのほそ道 \#023 \- Qiita](http://qiita.com/hosomichi/items/25041c1d46452de84aa6#v-cloak)
  > CSSと組み合わせて使うことでデータバインディング完了までこのディレクティブがつけられた要素の描画は遅れさせられる。初期表示時の画面のちらつきを抑える効果がある。

```html
<style>
[v-cloak] {
  display: none;
}
</style>

<div id="app">
  <div v-cloak>{{ foo }}</div>
</div>
```


## Validation

- [Vue\.js でバリデーションしてメッセージを日本語化する \- Qiita](https://qiita.com/komatzz/items/c27cfec74804e6275252)
- [フロントエンド・バリデーション // Speaker Deck](https://speakerdeck.com/izumisy/hurontoendobaridesiyon)
