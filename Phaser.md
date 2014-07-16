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
