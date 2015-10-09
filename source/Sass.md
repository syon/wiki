#### [Sass: Syntactically Awesome Style Sheets](http://sass-lang.com/)

> Sass is an extension of CSS3 which adds nested rules, variables, mixins, selector inheritance, and more. Sass generates well formatted CSS and makes your stylesheets easier to organize and maintain.

```bash
$ gem install sass
$ sass input.scss output.css
```

#### [LibSass](http://libsass.org/)
A C implementation of a Sass compiler
- [libSass wrappers](http://sass-lang.com/libsass)
    - [sass/node-sass](https://github.com/sass/node-sass)


## [Compass](http://compass-style.org/)

> - ベンダープレフィックス自動生成
> - 画像をフォルダに置くだけでCSSスプライトを生成
> - Variables, Mixins, Functions
> - CSS3
> - Layout, Reset, Typography

- [SassとCompassを使って楽しくCSSコーディング！ - develo.org](http://develo.org/2012/02/26/2335.html)
- [楽しくコーディング！Sass,Compassのデフォルトmixinとカスタム関数 - develo.org](http://develo.org/2014/05/19/0935.html)
- [今日から使える！ Sass/compass ゆるめ勉強会](http://www.slideshare.net/yuka2py/sasscompass-28389532)
- [【Webデザイナ－・コーダー向け】すぐに使えるSCSS入門｜Compass基礎編 ｜ Developers.IO](http://dev.classmethod.jp/ria/html5/web-desiner-corder-scss-compass/)

#### CSS Sprite
- [Compassで簡単、CSSスプライト作成 - CSSスプライト作成の基礎 | CodeGrid](https://app.codegrid.net/entry/compass-sprite-1)
    - 自動出力されたクラス（ファイル名ベース）を割り当てる方式 → 種類の違う静止アイコン
    - 既存のクラス内にmixinをincludeしてbackground-positionを自動で割り当てる方式 → ボタンhoverなど
