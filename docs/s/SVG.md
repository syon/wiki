---
slug: svg
title: SVG
layout: page.jade
---
Scalable Vector Graphics

## Libraries

[Snap.svg](http://snapsvg.io/)
: The JavaScript SVG library for the modern web.

[svg.js](http://www.svgjs.com/)
: A lightweight JavaScript library for manipulating and animating svg

[CairoSVG](http://cairosvg.org/)
: CairoSVG is a SVG converter based on Cairo. It can export SVG files to PDF, PostScript and PNG files.

[Segment](http://lmgonzalves.github.io/segment/)
: A little JavaScript class (without dependencies) to draw and animate SVG path strokes


## まとめ

- [今年こそついにSVG元年？まだ間に合う！SVGの学習に役立つサイト紹介 - 聴く耳を持たない(片方しか)](http://d.hatena.ne.jp/rikuo/20131028)
- [SVGを制作できるアプリ,お絵描きソフトを徹底的に調べました！ 114個 - 聴く耳を持たない(片方しか)](http://d.hatena.ne.jp/rikuo/20140528)
- [マークアップ・エンジニアのためのSVG入門 - SVGコードの基本 | CodeGrid](https://app.codegrid.net/entry/svg-basic)  
  株式会社ピクセルグリッドによるシリーズ記事（有料購読）
- [SVGを使いこなすための便利ツールいろいろ | Webクリエイターボックス](http://www.webcreatorbox.com/webinfo/svg-tools/)
- [Webグラフィックをハックする（2）：10分でわかるSVG 基礎編 (1/5) - ＠IT](http://www.atmarkit.co.jp/ait/articles/1206/01/news143.html)


## Articles

- __[幾何学的で美しいSVGパターン画像を生成する『GeoPattern』の紹介 - syonx](http://syonx.hatenablog.com/entry/2015/12/08/000000)__
- [東京の鉄道路線図SVGを作りました＆パブリックドメインで配布します - Liner Note](http://note.openvista.jp/2014/svg-rail-map)
- [SVGはFlashの代わりにはなりません、なりませんよ。 - 週刊SVG](http://ssvvgg.net/post/128179413430/svg%E3%81%AFflash%E3%81%AE%E4%BB%A3%E3%82%8F%E3%82%8A%E3%81%AB%E3%81%AF%E3%81%AA%E3%82%8A%E3%81%BE%E3%81%9B%E3%82%93%E3%81%AA%E3%82%8A%E3%81%BE%E3%81%9B%E3%82%93%E3%82%88)
- [SVGでプログラマブルな書体を作る話 | dwango creators' blog（ドワンゴクリエイターズブログ）](http://creator.dwango.co.jp/8741.html)
- [Bezier Curves from the Ground Up](http://jamie-wong.com/post/bezier-curves/)


## Tips

- [Retina対応にSVGは本当に使えるのか？ – Rriver](http://parashuto.com/rriver/responsive-web/is-svg-good-for-high-res-screen-solutions)
- [アイコンフォントからSVGへ！より手軽にベクター画像を表示しよう | Webクリエイターボックス](http://www.webcreatorbox.com/tech/svg-vector/)
- [SVGアイコンを実用するために知っておきたい、リンク周りの記述方法 | Webクリエイターボックス](http://www.webcreatorbox.com/tech/svg-icon-link/)
- [SVGクリッピングマスクにチャレンジ！静止画像も動画も、SVGで切り抜こう！ | Webクリエイターボックス](http://www.webcreatorbox.com/tech/svg-mask/)
- [球面パーティクル　 (SVG） - jsdo.it - Share JavaScript, HTML5 and CSS](http://jsdo.it/gaziya/x1AR)
- [Elastic SVG Elements | Codrops](http://tympanus.net/codrops/2014/12/15/elastic-svg-elements/)
- [PDF 2 SVG Converter](http://pramodhkp.github.io/pdf2svg/)
- [HTML5 と SVG で考える、これからの画像アクセシビリティ](http://www.slideshare.net/ssuser99dc16/html5fun-svg-accessibility)
- [How to work with SVG icons](http://fvsch.com/code/svg-icons/how-to/)
- [SVG Textのtext\-anchor属性をつかってみた。 \| CreativeStyle](https://kadoppe.com/archives/2012/01/svg-text%e3%81%aetext-anchor%e5%b1%9e%e6%80%a7%e3%82%92%e3%81%a4%e3%81%8b%e3%81%a3%e3%81%a6%e3%81%bf%e3%81%9f%e3%80%82.html)
- [インラインSVGがボケる場合への対処](http://www.h2.dion.ne.jp/~defghi/adjust.htm)
- [javascript \- D3 Appending Text to a SVG Rectangle \- Stack Overflow](http://stackoverflow.com/questions/20644415/d3-appending-text-to-a-svg-rectangle)
  - 図形とテキストをセットにしたい場合は `sg` 要素でくくる

### Convert Text with font to Outline

```bash
# Mac
$ /Applications/Inkscape.app/Contents/Resources/bin/inkscape -z -T -f ~/sample.svg -l ~/out.svg
```

- [php - Converting text into path (svg) on server? - Stack Overflow](http://stackoverflow.com/questions/8422558/converting-text-into-path-svg-on-server)
- [Inkscapeで描いた画像をpngにバッチ変換する - Qiita](http://qiita.com/mstssk/items/8e79d946de2cf1d2786f)
- [Inkscape - an SVG editing program. | Inkscape](https://inkscape.org/ja/doc/inkscape-man.html)
- [https://hub\.docker\.com/r/rasch/inkscape/](https://hub.docker.com/r/rasch/inkscape/)
- [任意のフォントを使ってDocker上でサイトのスクリーンショットを取りたい \- Qiita](http://qiita.com/yusukefurukawa/items/8774a2fc38799915790b)


## SVG Browser Support

- [Can I use... Support tables for HTML5, CSS3, etc](http://caniuse.com/#cats=SVG)
- [Raphaël—JavaScript Library](http://raphaeljs.com/)
    - [Raphael.jsを使用してIE上でもSVGを使う](http://5for1.jp/archives/288)


## Generator

- [Trianglify by @qrohlf](http://qrohlf.com/trianglify/)
- [Poly Maker](http://lab.aerotwist.com/canvas/poly-maker/)
- [SVGをアップして継ぎ目なしのデザインパターンを作ってくれる『Plain Pattern』 | IDEA*IDEA](http://www.ideaxidea.com/archives/2014/09/plain_pattern.html)
- [ZorroSVG - Put a Mask on it](http://quasimondo.com/ZorroSVG/)  
  透過PNG画像を jpeg + SVG filter に変換して軽量化
