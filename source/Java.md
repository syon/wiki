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

## Maven

- [Maven | TECHSCORE(テックスコア)](http://www.techscore.com/tech/Java/ApacheJakarta/Maven/index/)


## ライブラリ

- [＠IT：Java TIPS -- EclipseでライブラリとJavadocを関連付ける](http://www.atmarkit.co.jp/fjava/javatips/072eclipse024.html)

### [Apache Commons](http://commons.apache.org/)
The Commons is an Apache project focused on all aspects of reusable Java components.

#### [Lang](http://commons.apache.org/proper/commons-lang/)
Provides extra functionality for classes in java.lang.

- Javadoc: [Overview (Apache Commons Lang 3.3.2 API)](http://commons.apache.org/proper/commons-lang/javadocs/api-release/index.html)
    - [StringUtils](http://commons.apache.org/proper/commons-lang/javadocs/api-release/index.html?org/apache/commons/lang3/StringUtils.html)

#### [BeanUtils](http://commons.apache.org/proper/commons-beanutils/)
Easy-to-use wrappers around the Java reflection and introspection APIs.

- [＠IT：Java TIPS -- リクエストデータをJavaBeansにセット（Commons活用）](http://www.atmarkit.co.jp/fjava/javatips/090jakarta010.html)  
  Commons BeanUtils を使用したサンプル

#### [DbUtils - JDBC Utility Component](http://commons.apache.org/proper/commons-dbutils/)
JDBC helper library.

- [DBの値を自動でJavaオブジェクトに変換するライブラリ「DBUtils」のご紹介 （1/4）：CodeZine](http://codezine.jp/article/detail/7584)


### [Apache POI - the Java API for Microsoft Documents](http://poi.apache.org/)

- [Overview (POI API Documentation)](http://poi.apache.org/apidocs/overview-summary.html)
- [POIのHSSFを使ってExcelに画像を挿入 - No Programming, No Life](http://npnl.hatenablog.jp/entry/20081122/1227337357)
- [Javaで複数の画像ファイルをリサイズしてExcelに一括貼り付け（POI） - Qiita](http://qiita.com/mojaie/items/ace880e817e80f7746c0)


## JSP / Servlet

- [Java Solution FAQ：セッションの開始・継続・終了](http://www.atmarkit.co.jp/fjava/javafaq/session/session04.html)
- [＠IT：Java TIPS -- リダイレクトとフォワードの違いを知る](http://www.atmarkit.co.jp/fjava/javatips/062jspservlet029.html)

## Java Coding

### JavaのList・Mapのfor文
#### Listのfor文
```java
List<String> list = new ArrayList<String>();

// 拡張for文：推奨
for (String item : list) {
}

// イテレータ：拡張for文が使えない場合に使用(要素の追加や削除が必要な場合など)
for (Iterator<String> it = list.iterator(); it.hasNext(); ) {
    String item = it.next();
}

// インデックス：非推奨
for (int i = 0, size = list.size(); i < size; i++) {
    String item = list.get(i);
}
```
#### Mapのfor文
```java
Map<String, ValueClass> map = new HashMap<String, ValueClass>();

// 拡張for文：キーをループ
for (String key : map.keySet()) {
}

// 拡張for文：値をループ
for (ValueClass val : map.values()) {
}

// 拡張for文：キーと値をループ
for (Map.Entry<String, ValueClass> entry : map.entrySet()) {
    String key = entry.getKey();
    ValueClass val = entry.getValue();
}
```
#### 配列のfor文
```java
SomeClass array[] = { new SomeClass(), new SomeClass() };

// 拡張for文：推奨
for (SomeClass item : array) {
}

// インデックス：非推奨
for (int i = 0, len = array.length(); i < size; i++) {
    SomeClass item = array[i];
}
```
via - [JavaのList・Mapのfor文処理覚書 - よんちゅBlog](http://yonchu.hatenablog.com/entry/20110216/1297857882)

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
cf. Apache Commons - BeanUtils

- [Javaのオブジェクトの値をリフレクションでMapに格納するメモ | simultechnology.blog](http://simultechnology.blendmix.jp/blog/archives/1199)
- [文字列で指定したメソッドを呼び出すには？ － ＠IT](http://www.atmarkit.co.jp/fdotnet/dotnettips/389methodinvoke/methodinvoke.html)
- [JDK5.0でreflectionを使用しようとすると警告される理由 - くろのまったりシステム開発日記。](http://d.hatena.ne.jp/kuronekojima/20080304/1204599672)
- [メモ用Javaとか java 【private , getDeclaredMethod , invoke】](http://okbabybaby.blog77.fc2.com/blog-entry-19.html)  
  メソッド名を動的に指定して実行
- [Java でリストをマップに変換する | UB Lab.](http://www.united-bears.co.jp/blog/archives/2556)


### NVL

- [[java]JAVAでOracleのNVL()と同じ事を行う処理 | アマシィ](http://amaxi.sitemix.jp/blog/archives/1622)


## Eclipse
- [Eclipseのショートカットキー](http://so-zou.jp/software/tech/tool/ide/eclipse/shortcut/)


## Tips

### 複数のjarファイルを1つにまとめる

- [複数のjarファイルを1つに纏める - koichi’s swap memory](http://d.hatena.ne.jp/koichiarchi/20080116/1200447205)
- [Fat Jar Eclipse Plug-In](http://fjep.sourceforge.net/)
- [クラウドサービスプラットフォーム Cosminexus：Eclipse開発で使用するJARをユーザー･ライブラリーとしてまとめる：ソフトウェア：日立](http://www.hitachi.co.jp/Prod/comp/soft1/cosminexus/useful/tips/100304_eclipse-user-library.html)
