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


## Arduino

- [Arduinoで始めるWeb技術者のためのIoT入門（4）：JavaScriptで家電を操作するための赤外線信号の基礎知識 (1/3) - ＠IT](http://www.atmarkit.co.jp/ait/articles/1408/27/news036.html)


## Input Device

- [「腹痛いｗ」声でマリオを操作、「スーパーマリオ3」実況動画が話題に。 | Narinari.com](http://www.narinari.com/Nd/20140727200.html)


## Smart Lock
- [Comparable Matrix Between Smart Locks: Lockitron, Goji, August and Kevo | phillihp’s tech blog – Phil’s Tech Blog](http://phillihp.com/2013/06/23/comparable-matrix-between-smart-locks-lockitron-goji-august-and-kevo/)
- [ドアを進化させる「スマートロック」5選（動画） « WIRED.jp](http://wired.jp/2013/06/21/smart-locks/)

### [Goji Smart Lock for the Home](http://www.gojiaccess.com/)
- [IoTは「サービスのモノ化」と考えたほうがわかりやすい - THE BRIDGE（ザ・ブリッジ）](http://thebridge.jp/2014/07/iot_service)
- [スマホと連携し鍵の遠隔操作から一元管理まで可能なドアロックシステム「Goji Smart Lock」 - GIGAZINE](http://gigazine.net/news/20130617-goji-smart-lock/)

### [Lockitron](https://lockitron.com/)
- [鍵の開閉が携帯電話・スマホからできて複数人使用も可能な「Lockitron」 - GIGAZINE](http://gigazine.net/news/20130619-lockitron/)

### [August Smart Lock](http://www.august.com/)
- [ソーシャル機能も備えるスマート鍵「August Smart Lock」 « WIRED.jp](http://wired.jp/2013/06/02/august-smart-lock/)

### [Kevo Smart Lock - A Bluetooth Electronic Deadbolt from Kwikset](http://www.kwikset.com/Kevo/Default.aspx#.VAQFt3V_sak)


## センサー

- [センサーの種類と用途 | 特集 ｜ORIGINALMIND オリジナルマインド](http://www.originalmind.co.jp/special/sensor/)


## [IRKit](http://getirkit.com/)

Open Source WiFi Connected Infrared Remote Controller

- __[気づいたら IRKit GUI つくってた - X X X](http://syonx.hatenablog.com/entry/2014/08/12/011046)__
    - [HTTP、JavaScriptで家電を自動操縦、ホットな学習リモコンサーバIRKitの在庫復活！](http://hitoriblog.com/?p=24257)
    - [全てを司る全能感。iPhoneを家電のリモコンに変えるデバイス「IRkit」を全力でオススメします。 | iPhone・Macの情報発信ブログ "NUMBER333"](http://number333.org/2014/06/20/irkit/)
    - [iPhoneで操作できる安価で高機能なクラウドリモコンの決定版「IRKit」｜Mac - 週アスPLUS](http://weekly.ascii.jp/elem/000/000/243/243041/)
    - [Make: Japan | iPhone/iPadから家電を操作する「IRKit」— ウェブサービスを作る感覚でハードウェアを作る](http://makezine.jp/blog/2014/07/irkit.html)

### IRKit for BRAVIA

- [無線通信技術：家電向けリモコン技術の主流が30年ぶり交代、赤外線方式からRF方式へ - EE Times Japan](http://eetimes.jp/ee/articles/0906/30/news096.html)
- [向きを気にせず操作できる無線信号の「おき楽リモコン」 | ブラビア | ソニー](http://www.sony.jp/bravia/products/KDL-46NX800/feature_4.html#L2_345)
- [赤外線学習リモコンの信号定義データの合成（ソニーCSチューナー編）](http://www.geocities.jp/shrkn65/remocon/sony_cs.htm)
- [IRKit：物欲日記：So-netブログ](http://efox.blog.so-net.ne.jp/2014-02-07)
- [Sony SIRC decoder](http://picprojects.org.uk/projects/sirc/)
- [[PC-OP-RS1]SONYフォーマットを合成する(Perlで) | えぬてぃえすブログ](http://blog.nts-ltd.co.jp/archives/260)
- [仙石浩明の日記: 赤外線リモコンを Linux からコントロール](http://www.gcd.org/blog/2007/01/113/)


## Links

- [Sony Japan | ニュースリリース | スマートフォンなどからカメラをWi-Fi経由で操作するアプリケーション開発用のAPI公開](http://www.sony.co.jp/SonyInfo/News/Press/201309/13-109/index.html)
- [【趣味のインターネット地図ウォッチ】 第194回：iBeaconで人流解析、名古屋PARCOに300個のビーコン発信機 - INTERNET Watch](http://internet.watch.impress.co.jp/docs/column/chizu/20140814_662154.html)
