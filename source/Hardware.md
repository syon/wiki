## Bluetooth

- [Bluetooth in Ruby (Mac/Cross Platform) - Stack Overflow](http://stackoverflow.com/questions/1662915/bluetooth-in-ruby-mac-cross-platform)
- [音楽に合わせて電気を流すiOSアプリ - Over&Out その後](http://d.hatena.ne.jp/shu223/20140805/1407196139)
- [その設定でバッテリーは本当に節約されているのか？ - ザリガニが見ていた...。](http://d.hatena.ne.jp/zariganitosh/20131011/really_battery_saving)  
  iPhoneのバッテリー消費の検証実験

### iBeacon

- __[ASCII.jp：アップルが普及を狙う「iBeacon」とは何か？ その基本を押さえる (1/4)](http://ascii.jp/elem/000/000/899/899293/)__

<table><tbody>
<tr><th colspan="2">iBeaconで取得できる情報</th></tr>
<tr><th>UUID</th><td>128ビットの組織固有の識別番号</td></tr>
<tr><th>Major</th><td>16ビットの識別番号（可変）</td></tr>
<tr><th>Minor</th><td>16ビットの識別番号（可変）</td></tr>
<tr><th>Proximity</th><td>Far／Near／Immediateの3つの距離</td></tr>
<tr><th>RSSI</th><td>信号強度</td></tr>
</tbody></table>

> iBeaconによる位置測定の誤差は最大で数m程度あるということもあり、1m以内の至近距離でなければ数字的な信頼性は低いと考えてかまわない。そのためAppleは、iBeaconにおいて「Far」「Near」「Immediate」の3つの距離グループを設定し、“おおまか”な距離感を提示するにとどまっている。正確なしきい値は示されていないが、Farは約10m以上、Nearは数m以内、Immediateは1m以内くらいと考えておけばいい。

> 結局のところ、iBeaconで可能なのは「iBeaconが出すUUID／Major／Minorの値を取得して、その距離を測る」ことだけだ。範囲外であればスマートフォンでiBeaconは受信できないし、範囲内にいたとしても距離（電波強度）を測るだけにとどまる。逆に、この性質を利用することで「特定のUUIDに反応するスマートフォンアプリを作成し、距離に応じてさまざまな機能が利用できる」仕組みを用意することが可能だ。

<div>
<img src="http://ascii.jp/elem/000/000/899/899297/003_c_800x600.jpg" width="400">
<img src="http://ascii.jp/elem/000/000/899/899299/004_c_800x600.jpg" width="400">
</div>

- [企画とエンジニアが知っておかないといけない「iBeacon」の話 #iBeacon #yahoo #iOS7｜CodeIQ MAGAZINE](https://codeiq.jp/magazine/2014/05/10303/)
- [iOS 7の隠れキラーコンテンツとなる近距離無線通信「iBeacon」とは？ - GIGAZINE](http://gigazine.net/news/20130911-ibeacon/)
- [iBeaconとは？ | iBeaconなら「ストアビーコン」](http://smartphone-ec.net/ibeacon/system.html)
- [iBeaconの解説 - Reinforce-Lab.'s Blog](http://reinforce-lab.github.io/blog/2013/10/21/ibeacon/)
- [iBeacon Advent Calendar 2013 - Qiita](http://qiita.com/advent-calendar/2013/ibeacon)
- [Node.js - たった6行!最も簡単にiBeaconの電波を「発信」する方法 - Qiita](http://qiita.com/Morikuma_Works/items/a0dd3cfcd1eef8dbd492)


## Arduino

- [Arduinoで始めるWeb技術者のためのIoT入門（4）：JavaScriptで家電を操作するための赤外線信号の基礎知識 (1/3) - ＠IT](http://www.atmarkit.co.jp/ait/articles/1408/27/news036.html)
- [XBeeを始めて買うとき最低限知っておきたい6つのこと](http://nanoappli.com/blog/archives/4184)
- [Arduino Uno用保護バンパー - DMM3Dプリント](http://make.dmm.com/item/34212/)

### [LightBlue Bean | Zero wires. Infinite uses.](http://punchthrough.com/bean/)
Lightblue BeanはLBM313 Bluetooth LEモジュールにRGB LEDと3軸加速度センサ、更にATmega328Pを載せたBTペリフェラル。プリオーダー時は送料含めて1個\2,800。技適（技術基準適合）を通っていない。
- [Make: Japan | Cortado登場 – ケーブルがいらないArduino](http://makezine.jp/blog/2013/12/an-early-look-at-the-cortado-the-arduino-youll-never-plug-in.html)
- [電子工作 - LightBlue Beanのセットアップ方法(mac) - Qiita](http://qiita.com/mio_k/items/dc6151b13f47adb1d795)
- [めもめもLightblue Beanが届いた！](http://minori246.blog.fc2.com/blog-entry-7.html)
- [ROBOMIC（ブログ）: 無線（LightBlue Bean）](http://micono.cocolog-nifty.com/blog/lightblue_bean/index.html)

## littleBits

- [littleBits - cloudBitとIFTTTで「おとうさんいまどこメーター」を作る - Qiita](http://qiita.com/kazunori279/items/7dbbb525ab0cf6d5d9b5)


## Input Device

- [「腹痛いｗ」声でマリオを操作、「スーパーマリオ3」実況動画が話題に。 | Narinari.com](http://www.narinari.com/Nd/20140727200.html)


## Smart Lock
- → __[[Life]]__


## センサー

- [センサーの種類と用途 | 特集 ｜ORIGINALMIND オリジナルマインド](http://www.originalmind.co.jp/special/sensor/)


## 3D プリント

- [つくりたいもの、ほしいもの、ネットから3Dプリント！ - DMM.com](http://make.dmm.com/)

## Links

- [IoTやるならまず知っておきたいパーツ屋・オンラインショップ - Qiita](http://qiita.com/kazuph/items/86a1f88e06ff874abe68)
- [Sony Japan | ニュースリリース | スマートフォンなどからカメラをWi-Fi経由で操作するアプリケーション開発用のAPI公開](http://www.sony.co.jp/SonyInfo/News/Press/201309/13-109/index.html)
- [【趣味のインターネット地図ウォッチ】 第194回：iBeaconで人流解析、名古屋PARCOに300個のビーコン発信機 - INTERNET Watch](http://internet.watch.impress.co.jp/docs/column/chizu/20140814_662154.html)
- [Intel、指先に乗る極小x86コンピュータ「Edison」を正式発表 ～日本でも10月発売 - PC Watch](http://pc.watch.impress.co.jp/docs/news/20140910_665900.html)
- [Yahoo! IoT](https://iot.yahoo.co.jp/)
