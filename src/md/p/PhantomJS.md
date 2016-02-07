---
slug: phantomjs
title: PhantomJS
layout: page.jade
---

> PhantomJS is a headless WebKit scriptable with a JavaScript API. It has __fast__ and __native__ support for various web standards: DOM handling, CSS selector, JSON, Canvas, and SVG.  
http://phantomjs.org


## Get Started
[Download | PhantomJS](http://phantomjs.org/download.html)

#### OS X
```bash
$ brew install phantomjs
```


## [Quick Start](http://phantomjs.org/quick-start.html)

not a library, but a command

```bash
$ phantomjs
phantomjs> require('webpage');
{
   "create": "[Function]"
}
phantomjs>
```


## Screen Capture

### official docs
- [Screen Capture | PhantomJS](http://phantomjs.org/screen-capture.html)
  > PhantomJS can render anything on the web page, it can be used to convert contents not only in HTML and CSS, but also SVG and Canvas.
- [viewportSize | PhantomJS](http://phantomjs.org/api/webpage/property/viewport-size.html)  
  Viewportサイズの指定であって、出力画像のpxサイズ指定ではないことに注意

### articles
- [viewport - viewportSize seems not to work with PhantomJS - Stack Overflow](http://stackoverflow.com/questions/13390859/viewportsize-seems-not-to-work-with-phantomjs)
- [Node.jsでフォルダ内の全HTMLをキャプチャし画像化 - Qiita](http://qiita.com/clockmaker/items/67f13a880aa2f508b167)


## Page Automation
- [Page Automation | PhantomJS](http://phantomjs.org/page-automation.html)
