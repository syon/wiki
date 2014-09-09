## Overview

### [Java ‐ 通信用語の基礎知識](http://www.wdic.org/w/TECH/Java)  
詳しい沿革が記載されている。
- JDK 1.0
- JDK 1.1
- J2SE 1.2
- J2SE 1.3
- J2SE 1.4
- J2SE 5.0
- J2SE 5.1
- Java SE 6
- Java SE 7
- Java SE 8


## Java Coding

### for文

- [JavaのList・Mapのfor文処理覚書 - よんちゅBlog](http://yonchu.hatenablog.com/entry/20110216/1297857882)

### Map

- [Java Map クラスの違い HashMap Hashtable TreeMap LinkedHashMap](http://kaworu.jpn.org/kaworu/2008-04-10-2.php)

<table><tr><td> <strong>HashMap</strong></td><td> k=vの並びが適当 </td></tr><tr><td> <strong>Hashtable</strong></td><td> keyが降順(数が大から小へ数えた順番)になる </td></tr><tr><td> <strong>TreeMap</strong></td><td> keyが昇順(数が小から大へ)になる</td></tr><tr><td> <strong>LinkedHashMap</strong></td><td> k=vを入れた順番に並ぶ </td></tr></table>

### 正規表現

- [文字列から正規表現で特定部分を抽出 - 風日記](http://d.hatena.ne.jp/mmasashi/20091030/1256919089)
- [Javaの道：文字列（７．正規表現）](http://www.javaroad.jp/java_character7.htm)

```java
"Apple iPhone 5s Silver".matches( "^.*iPhone.*$" ); // true
```

### リフレクション

#### [BeanUtils - Commons](http://commons.apache.org/proper/commons-beanutils/)
The Java language provides Reflection and Introspection APIs (see the `java.lang.reflect` and `java.beans` packages in the JDK Javadocs). However, these APIs can be quite complex to understand and utilize. The BeanUtils component provides easy-to-use wrappers around these capabilities.

- [＠IT：Java TIPS -- リクエストデータをJavaBeansにセット（Commons活用）](http://www.atmarkit.co.jp/fjava/javatips/090jakarta010.html)  
  Commons BeanUtils を使用したサンプル

<!---->
- [Javaのオブジェクトの値をリフレクションでMapに格納するメモ | simultechnology.blog](http://simultechnology.blendmix.jp/blog/archives/1199)
- [文字列で指定したメソッドを呼び出すには？ － ＠IT](http://www.atmarkit.co.jp/fdotnet/dotnettips/389methodinvoke/methodinvoke.html)
- [JDK5.0でreflectionを使用しようとすると警告される理由 - くろのまったりシステム開発日記。](http://d.hatena.ne.jp/kuronekojima/20080304/1204599672)
- [メモ用Javaとか java 【private , getDeclaredMethod , invoke】](http://okbabybaby.blog77.fc2.com/blog-entry-19.html)  
  メソッド名を動的に指定して実行

## ライブラリ

### [Apache POI - the Java API for Microsoft Documents](http://poi.apache.org/)

- [Overview (POI API Documentation)](http://poi.apache.org/apidocs/overview-summary.html)
- [POIのHSSFを使ってExcelに画像を挿入 - No Programming, No Life](http://npnl.hatenablog.jp/entry/20081122/1227337357)
- [Javaで複数の画像ファイルをリサイズしてExcelに一括貼り付け（POI） - Qiita](http://qiita.com/mojaie/items/ace880e817e80f7746c0)

## Tips

### 複数のjarファイルを1つにまとめる

- [複数のjarファイルを1つに纏める - koichi’s swap memory](http://d.hatena.ne.jp/koichiarchi/20080116/1200447205)
- [Fat Jar Eclipse Plug-In](http://fjep.sourceforge.net/)
- [クラウドサービスプラットフォーム Cosminexus：Eclipse開発で使用するJARをユーザー･ライブラリーとしてまとめる：ソフトウェア：日立](http://www.hitachi.co.jp/Prod/comp/soft1/cosminexus/useful/tips/100304_eclipse-user-library.html)
