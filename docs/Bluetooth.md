## WebBluetoothAPI

- [WebBluetoothAPIを使ってブラウザからBLEデバイスを操作する \- Qiita](http://qiita.com/tky_bpp/items/f2db61ee8caac8eec031)


## iBeacon

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
- [iBeacon と BLE - Over&Out その後](http://d.hatena.ne.jp/shu223/20141208/1418051009)
- [SwiftとiBeaconを使ってお母さんが自分の部屋に近づいて来た事を警告するアプリをつくる - Qiita](http://qiita.com/oggata/items/5de43d71692d1abcff7c)


## others

- [Bluetooth in Ruby (Mac/Cross Platform) - Stack Overflow](http://stackoverflow.com/questions/1662915/bluetooth-in-ruby-mac-cross-platform)
- [音楽に合わせて電気を流すiOSアプリ - Over&Out その後](http://d.hatena.ne.jp/shu223/20140805/1407196139)
- [その設定でバッテリーは本当に節約されているのか？ - ザリガニが見ていた...。](http://d.hatena.ne.jp/zariganitosh/20131011/really_battery_saving)  
  iPhoneのバッテリー消費の検証実験
