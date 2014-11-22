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
    - [Phaser-dash-docset by rcolinray](http://rcolinray.github.io/phaser-dash-docset/)  
      MacアプリのDash用Docset。  
      `dash-feed://https%3A%2F%2Fraw.githubusercontent.com%2Frcolinray%2Fphaser-dash-docset%2Fmaster%2FPhaser.xml`
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
- It's Just Plain JavaScript
    - [#TypeScript](#TypeScript)
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

#### 参考作品

- [VVVVVV - A game by Terry Cavanagh](http://thelettervsixtim.es/) (Flash)
- [チップチューン女子・TORIENAのMVが話題！ ドット絵による驚愕の作画量](http://kai-you.net/article/7400)
- [ICON » チップチューン・ガール、TORIENAのドット絵ミュージック・ビデオはいかにして作られたのか？ 〜 m7kenjiが語るPhotoshopとFlashを駆使したプロダクション](http://icon.jp/archives/9078)

### Articles

- [HTML5ゲームエンジン「Phaser」が初心者とモバイルにやさしくていい感じです - X X X](http://syonx.hatenablog.com/entry/2014/07/05/103418)
- [『VVVVVV』 クリエイター Terry Cavanagh ミニマリストの想い、追究 | AUTOMATON](http://jp.automaton.am/articles/one-man-dev/creator-01-terry-cavanagh/)
- [夏休みをゲーム制作に費やした少女たちがいた――16歳と19歳が生み出した傑作『クロエのレクイエム』誕生秘話:ニコニコ自作ゲームフェス:ニコニコ自作ゲームフェス(ニコニコ自作ゲームフェス) - ニコニコチャンネル:ゲーム](http://ch.nicovideo.jp/indies-game/blomaga/ar611037)
- [フリーソフト超激辛ゲームレビュー](http://gekikarareview.com/)

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

- codevinsky
    - [Phaser 2.0 Tutorial: Flappy Bird (Part 1)](http://www.codevinsky.com/phaser-2-0-tutorial-flappy-bird-part-1/)
    - [Phaser 2.0 Tutorial: Flappy Bird (Part 2)](http://www.codevinsky.com/phaser-2-0-tutorial-flappy-bird-part-2/)

- [HTML5 Mobile Game Development with Phaser | Zenva Academy](https://academy.zenva.com/product/html5-mobile-game-development-with-phaser/)
- [Multi-platform Games with PhaserJS | Eden Digital Agency](http://createdineden.com/blog/2014/may/01/multi-platform-games-with-phaserjs/)  
  Xcode の UIWebView を使った実装例あり。

### Tips

- [Fullscreen Scaling in Phaser | tjkopena](http://www.rocketshipgames.com/blogs/tjkopena/2014/10/fullscreen-scaling-in-phaser/)

### TypeScript

#### [Phaser × TypeScript で快適なゲーム開発環境を構築する - X X X](http://syonx.hatenablog.com/entry/2014/09/12/003000)

- [Photon Storm » Blog Archive » How to use Phaser with TypeScript](http://www.photonstorm.com/phaser/how-to-use-phaser-with-typescript)
- [Photon Storm » Blog Archive » Advanced Phaser and TypeScript Projects](http://www.photonstorm.com/phaser/advanced-phaser-and-typescript-projects)
- [Adventures in Phaser with TypeScript–Particles](http://www.gamefromscratch.com/post/2014/09/05/Adventures-in-Phaser-with-TypeScript-Particles.aspx)

### Tile Map

#### Editor

##### [Tiled Map Editor](http://www.mapeditor.org/)
- [Collisions and Collectables: How To Make a Tile-Based Game with Cocos2D 2.X Part 2 | Ray Wenderlich](http://www.raywenderlich.com/29460/collisions-and-collectables-how-to-make-a-tile-based-game-with-cocos2d-2-x-part-2)

##### [Mighty Editor](http://mightyeditor.mightyfingers.com/)
- [HTML5 Game Editor | Web Based | MightyFingers » Blog Archive » Game editor on Phaser.io](http://mightyfingers.com/blog/game-editor-o-phaser/)

##### [Deadly Alien Map Editor](http://dambots.com/dame-editor/)
- [Photon Storm » Blog Archive » DAME 2 Released – My Favourite Game Map Editor!](http://www.photonstorm.com/game-development/software/dame-2-released-my-favourite-game-map-editor)

##### [Toast Editor](http://toastedware.com/toasteditor/)
- [Tutorial: Sketch your levels with Toast Editor and load them into Phaser HTML5 game framework • Toastedware](http://toastedware.com/?p=297)

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
      以下のmetaを設定したページをホーム画面に追加して起動するとフルスクリーン（ツールバーなし）になる。
```html
<meta name="apple-mobile-web-app-capable" content="yes">
```
- デスクトップ/モバイル判定とスケール
    - [2.0.0 - this.game.stage.scale.setScreenSize is not a function - Phaser - HTML5 Game Devs Forum](http://www.html5gamedevs.com/topic/4838-200-thisgamestagescalesetscreensize-is-not-a-function/)  
      [TypeScriptのチュートリアル](http://www.photonstorm.com/phaser/advanced-phaser-and-typescript-projects)に記載されているコードとちょっと違う。Phaser v2.0.7 で動作確認できたのは以下。
```js
if (this.game.device.desktop) {
    this.scale.pageAlignHorizontally = true;
}
else {
    this.scale.scaleMode = Phaser.ScaleManager.SHOW_ALL;
    this.scale.minWidth = 480;
    this.scale.minHeight = 260;
    this.scale.maxWidth = 1024;
    this.scale.maxHeight = 768;
    //this.scale.forceLandscape = true;
    this.scale.pageAlignHorizontally = true;
    this.scale.setScreenSize(true);
}
```
`forceLandscape`は意図する挙動がよくわからない。有効にすると、iPhoneを縦(portrait)にしたとき縦に引き伸ばされてしまう。
    - [Loading HD graphics on Hi-res devices - Phaser - HTML5 Game Devs Forum](http://www.html5gamedevs.com/topic/2789-loading-hd-graphics-on-hi-res-devices/)  
      Retina対応するためにはまずゲーム自体をRetina解像度で作る。Phaserは自由にスケールできる。
