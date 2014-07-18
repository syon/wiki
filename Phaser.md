[[PHASER.png|align=center]]

## [Phaser - Desktop and Mobile HTML5 game framework](http://phaser.io/)

モバイル/デスクトップ向けのHTML5製の2Dゲームフレームワーク。  
Pixi.jsベースでCanvasやWebGLのレンダリングもサポート。

Tags: `flash-like` `2d` `sounds` `collisions` `physics` `typescript` `webgl` `free`  
cdnjs: `//cdnjs.cloudflare.com/ajax/libs/phaser/2.0.5/phaser.min.js`

- [Examples - PixiJS](http://www.pixijs.com/examples/)  
  ベースとなっている Pixi.js のサンプル。レンダリング結果の雰囲気がつかめる。
- [HTML5 Game Engines - Find Which is Right For You](http://html5gameengine.com/)  
  HTML5ベースのゲームエンジン一覧。比較がしやすい。

### Phaser Sites

- [Documentation](http://docs.phaser.io/)  
  ドキュメント。各クラスのdocもある。
- [Support Forum](http://www.html5gamedevs.com/forum/14-phaser/)  
  フォーラム
- [phaser labs](http://labs.phaser.io/)  
  the playground and test site
- [Phaser Plugins](https://github.com/photonstorm/phaser-plugins)  
  "We are trying hard to keep the core of Phaser limited to only essential classes"

### Overview

[How to Learn the Phaser HTML5 Game Engine - Tuts+ Game Development Article](http://gamedevelopment.tutsplus.com/articles/how-to-learn-the-phaser-html5-game-engine--gamedev-13643)
- What Platforms Can I Target With Phaser?
    - Desktop Browsers
    - Mobile Browsers
    - Firefox OS, Tizen, and Kindle
    - Native Apps and Desktop EXEs
- Key Features
    - It's Just Plain JavaScript  
      [Photon Storm » Blog Archive » How to use Phaser with TypeScript](http://www.photonstorm.com/phaser/how-to-use-phaser-with-typescript)
- Easy Asset Loading
    - Images
    - Sprite Sheets (fixed sized frames)
    - Texture Atlases (including Texture Packer, JSON Hash, JSON Array, Flash CS6/CC, and Starling XML formats)
    - Audio files
    - Data Files (XML, JSON, plain text)
    - JavaScript files (so you can part-load your games or JS based resources)
    - Tilemaps (CSV and Tiled map formats)
    - Bitmap Fonts
- Rendering: WebGL and Canvas
    - [Pixi.js - 2D webGL renderer with canvas fallback](http://www.pixijs.com/)  
      Internally, Phaser uses Pixi.js for rendering. Pixi is a great, fast rendering library that focuses on Canvas and WebGL.
    - [Sprite Lamp | Snake Hill Games](http://snakehillgames.com/spritelamp/)  
      Dynamic lighting for 2D art
- Audio: Web Audio and Legacy Audio
- Input: Multi-Touch, Keyboard, Pointer, Mouse  
  You can define up to 10 touch points and track them all independently, using their events to handle Sprite interactions such as dragging, tapping, and collision.
- Physics, Tweens, and Particles
    - can be swapped out for the likes of Box2D or p2.js.
    - A tweening system is also built-in, allowing you to tween objects or properties easily.
    - should the game pause, then all of your tweens will pause automatically and resume as needed.
- Plugins  
  It is our aim that the core of Phaser will eventually settle down and hit a nice stable equilibrium, where we're not likely to touch it much beyond fixes and browser updates.
    - A great example of this is the recently released [EasyStar](https://github.com/prettymuchbryce/easystarjs) path finding plugin ([easystar.js](http://easystarjs.com/))

### Learn By Example

- [Phaser Examples](http://examples.phaser.io/)  
  公式サンプル集
    - [photonstorm/phaser-examples (GitHub)](https://github.com/photonstorm/phaser-examples)  
    公式サンプル集のソースコード
- [Connect Me](https://dl.dropboxusercontent.com/u/36169647/HTML5/connectors/index.html)
- [Initials](http://www.initialsgames.com/microsites/)

#### [12 Games in 12 Weeks | Lessmilk](http://www.lessmilk.com/12games.php) :: Phaserで毎週１つゲームを作った人の作品集

- Game #1: Run!
    - スプライトシートを使ってキャラクター移動時のアニメーションを行っている。
```js
// http://docs.phaser.io/Phaser.Loader.html#spritesheet
game.load.spritesheet('player', 'images/player.png', 20, 24);
this.player.animations.add('left', [6, 7], 10, true);
this.player.animations.play('left');
```

### Tutorials

- [Photon Storm » Blog Archive » Tutorial: Making your first Phaser game](http://www.photonstorm.com/phaser/tutorial-making-your-first-phaser-game)

- [Phaser tutorial](http://www.lessmilk.com/phaser-tutorial/)  
  Phaserのチュートリアル記事一覧

- Lessmilk
    - [Make HTML5 games with Phaser - Introduction](http://blog.lessmilk.com/make-html5-games-with-phaser-1/) :::: ([DEMO on syon/works](http://syon.github.io/works/game/1/))
    - [How to make a Flappy Bird in HTML5 - Part 1](http://blog.lessmilk.com/how-to-make-flappy-bird-in-html5-1/)
:::: ([DEMO on syon/works](http://syon.github.io/works/game/2/))
    - [How to make a Flappy Bird in HTML5 - Part 2](http://blog.lessmilk.com/how-to-make-flappy-bird-in-html5-2/)
:::: ([DEMO on syon/works](http://syon.github.io/works/game/3/))
    - [How to make a Flappy Bird in HTML5 - Part 3](http://blog.lessmilk.com/how-to-make-flappy-bird-in-html5-3/)
:::: ([DEMO on syon/works](http://syon.github.io/works/game/4/))

- [HTML5 Mobile Game Development with Phaser | Zenva Academy](https://academy.zenva.com/product/html5-mobile-game-development-with-phaser/)
- [Multi-platform Games with PhaserJS | Eden Digital Agency](http://createdineden.com/blog/2014/may/01/multi-platform-games-with-phaserjs/)  
  Xcode の UIWebView を使った実装例あり。

### Articles

- [HTML5ゲームエンジン「Phaser」が初心者とモバイルにやさしくていい感じです - X X X](http://syonx.hatenablog.com/entry/2014/07/05/103418)

### iPhone対応

- iPhoneのタップに対応する
    - [How to capture a touch event on mobile device - Phaser - HTML5 Game Devs Forum](http://www.html5gamedevs.com/topic/1764-how-to-capture-a-touch-event-on-mobile-device/)
```js
game.input.onDown.add(doSomething, this);

function doSomething(pointer) {
 // pointer will contain the pointer that activated this event
}
```
他にも、画面の左右領域タップやスワイプに関する記述がある。
    - [phaser - multi touch](http://examples.phaser.io/_site/view_full.html?d=input&f=multi+touch.js&t=multi%20touch)  
      マルチタッチのサンプル
- フルスクリーン
    - [phaser.js - Super Mario Combo](http://gametest.mobi/mariocombo/)
    - [FullScreen iPhone issue - Phaser - HTML5 Game Devs Forum](http://www.html5gamedevs.com/topic/2051-fullscreen-iphone-issue/)  
      iPhoneではフルスクリーンAPIがサポートされていないため使用不可。
    - [javascript - iOS 7 go into full screen mode (add to home screen button) - Stack Overflow](http://stackoverflow.com/questions/19710014/ios-7-go-into-full-screen-mode-add-to-home-screen-button)  
      以下のmetaを設定したページをホーム画面に追加して起動するとフルスクリーンになる。
```html
<meta name="apple-mobile-web-app-capable" content="yes">
```
