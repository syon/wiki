---
slug: ActionScript
title: ActionScript
layout: page.jade
---

## 参考作品

- [Adobe AppBox](https://appbox.adobe-web.jp/)  
  AIRアプリケーション登録型事例サイト


## Starling

#### [Starling - The Cross Platform Game Engine](http://gamua.com/starling/)

### Setup
- [Setup Starling Framework - Flash CS6 / AS3 - ✗](http://syonx.hatenablog.com/entry/2014/02/16/013434)

### References
- [Transitions - Starling Framework Reference](http://doc.starling-framework.org/core/starling/animation/Transitions.html)

### Samples
- [Starling Framework 演出サンプル No.01: パーティクル | ClockMaker Blog](http://clockmaker.jp/blog/2011/11/starling-framework-sample/)


## FeliCa / PaSoRi

- [Sony Japan | FeliCa | 法人のお客様 | 製品情報 | ソフトウェア開発環境](http://www.sony.co.jp/Products/felica/business/products/sdk.html)
- [SDK for FeliCaの選び方（PDF） - Sony](http://www.sony.co.jp/Products/felica/business/data/SDK_Products.pdf)  
  SDK for NFC / SDK for FeliCa 製品概要 2011年12月12日 ソニー株式会社  
  とても参考になるPDF
- [Adobe - SDK for FeliCa & AdobeR AIRR/AdobeR FlashR](http://www.adobe.com/jp/joc/flex/sony_felica/)
- [Flash/AIRとFeliCaの連携 - 携帯電話の制御 | デベロッパーセンター](http://www.adobe.com/jp/devnet/flex/articles/felica_tutorial.html)
- [リーダーライター（PaSoRi）とFlashを連携してみる | alt](http://blog.alt-scape.com/archives/356)


#### SDKforNFCのサンプルコードを試す

0. Project > Import Project... > .actionScriptProperties を選択(.as3projファイルが作られる)
0. "SDKforNFC_Adobe_AIR_Flash_Basic_1.3.0\lib\SDKforAIR_Flash_Basic.swc"をコピー
0. Project内のlibsにペースト
0. Project > Properties... > Outputタブ > Flash Player を 11.6 に変更
0. Project > Build Project
0. bin-debugフォルダにswfができるのでブラウザにドラッグアンドドロップして実行


#### SWF → JS 連携

- [ExternalInterface.callの使い方を記録 | Hi-farm blog](http://blog.hi-farm.net/2008/06/09/externalinterfacecall%e3%81%ae%e4%bd%bf%e3%81%84%e6%96%b9%e3%82%92%e8%a8%98%e9%8c%b2/)

<pre>
/* mxml */
if (ExternalInterface.available) {
    try {
        ExternalInterface.call( "myjsfunction", arg1, arg2 );
    }
    catch(e:SecurityError) {
        /*
            セキュリティエラーは、許可されていないところへ接続しようとした場合などに起こります。
            例：crossdomain.xmlが存在しない外部ドメインへURLLoaderなどで接続しようとした、など
        */
        //セキュリティエラーの場合の処理（エラーメッセージを出力するとか）
    }
    catch(e:Error) {
        //それ以外のエラーが起きた場合（同じくエラーメッセージを出力するとか）
    }
}
</pre>

#### SWF読込完了時にJS実行

    <mx:Application xmlns:mx="http://www.adobe.com/2006/mxml" layout="absolute" creationComplete="init()">
    ：
    <mx:Script>
    function init():void {
        displayMessage("SWF load complete.");
        ExternalInterface.call("readyFeliCa");
    }
    ：
