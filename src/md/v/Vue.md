---
slug: vue
title: Vue.js
layout: page.jade
---

## Official
- [Vue\.js](https://vuejs.org/)
- [Vue\.js (jp)](https://jp.vuejs.org/)

## Tips
- [Vue\.js が templateURL をサポートしない理由 \- Vue\.js](https://jp.vuejs.org/2015/10/28/why-no-template-url/)
  - [javascript \- VueJs templating\. How to load external templates \- Stack Overflow](http://stackoverflow.com/questions/31633573/vuejs-templating-how-to-load-external-templates)
- [Vue\.js 2\.xのフィルタについて調べてみた \- Qiita](http://qiita.com/yutaro23/items/095cf66038bb9fabc094)
- [vue\.jsでpugとpostcssつかう \- Qiita](http://qiita.com/shuuhei/items/4852210d362d2e9022d7)
- [javascript \- Vue\.js v\-if for attributes \- Stack Overflow](http://stackoverflow.com/questions/36302148/vue-js-v-if-for-attributes)  
  ```html
  <table v-bind:attribute1="someMethod" attribute2="{{anotherMethod}}">
  ```
- [Vue\.js2\.x系で親から子コンポーネントにデータを渡す方法 \| Black Everyday Company](http://kuroeveryday.blogspot.jp/2016/10/vuejs-components-props.html)


## UI

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


## Dev

- [AtomのVue\.js関係プラグインまとめ \- Qiita](http://qiita.com/mrmr/items/f6927eb2fe5aa13a2f90)
- [Vue\.js 2\.2 Complete API Cheat Sheet](https://vuejs-tips.github.io/cheatsheet/)

[lakb248/vue\-pull\-refresh](https://github.com/lakb248/vue-pull-refresh)
: A pull down refresh component implement by vuejs

### vue-router :: transition

- [Tumblr API \+ Vue\.jsでTumblrテーマを作った話 \- Qiita](http://qiita.com/ryo_dg/items/b2c030362241a20bc6bb)
- [Vue\.js page transition fade effect with vue\-router \- Stack Overflow](http://stackoverflow.com/questions/41221099/vue-js-page-transition-fade-effect-with-vue-router)  
  `transition name="hoge"` がCSSセレクタ接頭辞になる


## ディレクティブ

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
