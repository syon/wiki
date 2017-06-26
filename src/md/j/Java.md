---
slug: java
title: Java
layout: page.jade
---

__<mark>[Compile and Execute Java Online](https://www.tutorialspoint.com/compile_java_online.php)</mark>__


## Overview

### About Java
#### [Java ‐ 通信用語の基礎知識](http://www.wdic.org/w/TECH/Java)  
`JDK 1.0` `JDK 1.1` `J2SE 1.2` `J2SE 1.3` `J2SE 1.4` `J2SE 5.0` `J2SE 5.1` `Java SE 6` `Java SE 7` `Java SE 8`

- [Javaって何だ？J2SDKとかJ2SEとかJ2EEとか、概念をわかっておこう](http://www.searchman.info/java_eclipse/1000.html)

#### JVM

- [JVMとGCのしくみ \- ITエンジニアとして生きる](http://d.hatena.ne.jp/ogin_s57/20120623/1340463194)
  - Permanent領域（非ヒープ領域）
  - New領域（ヒープ領域）
  - Old領域（ヒープ領域）
- [JVMのチューニング \- ITエンジニアとして生きる](http://d.hatena.ne.jp/ogin_s57/20120709/1341836704)
  - Permanent領域のチューニング
    - `-XX:PermSize` Permanent 領域の初期値
    - `-XX:MaxPermSize` Permanent 領域の最大値
  - ヒープ領域のチューニング
    - `-Xms` ヒープ領域（New領域＋Old領域）の初期値
    - `-Xmx` ヒープ領域（New領域＋Old領域）の最大値


## Docker
- [library/openjdk \- Docker Hub](https://hub.docker.com/_/openjdk/)


## Library
- → __[Java Library](java-library)__

## Articles
- [プログラミング未経験だった僕がJava EE 6を学び始めて1年で読んだ良記事まとめ](http://yukiyan.com/2014/12/05/javaee/)
- [Javaエンジニアのためのアーキテクト講座-JJUG CCC 2014 Fall](http://www.slideshare.net/yusuke/jjugccc2014fall-architect)
- [3つのフレームワークで学ぶエンタープライズJava開発入門（1）：Strutsを使い続けることの問題点＆現在有力なJava EE、Spring、Play Frameworkの基礎知識とアーキテクチャ - ＠IT](http://www.atmarkit.co.jp/ait/articles/1507/02/news012.html)
- [Javaのマイクロフレームワーク ― この新トレンドは見逃せない | インフラ・ミドルウェア | POSTD](http://postd.cc/java-micro-frameworks-the-new-trend-you-cant-ignore/)
- [Javaでのファイルコピー史 - Qiita](http://qiita.com/kawasima/items/145231e9a51b5c05d589)


## Maven

- [Maven | TECHSCORE(テックスコア)](http://www.techscore.com/tech/Java/ApacheJakarta/Maven/index/)
- [The Central Repository Search Engine](http://search.maven.org/)
- [Maven – Guide to Coping with Sun JARs](http://maven.apache.org/guides/mini/guide-coping-with-sun-jars.html)
- [Maven2でEARプロジェクト：Javaってまだいけますか](http://javawock.blog.shinobi.jp/java-%20maven2/maven2%E3%81%A7ear%E3%83%97%E3%83%AD%E3%82%B8%E3%82%A7%E3%82%AF%E3%83%88)

#### Proxy settings
- [Maven2にプロキシを教える](http://www.jxpath.com/maven2/step1/proxy.html)
- [Maven – Guide to using proxies](https://maven.apache.org/guides/mini/guide-proxies.html)
- `C:\java\apache-maven-3.3.3\conf\settings.xml`
- `C:\Users\username\.m2\settings.xml`

#### Oracle JDBC
- [MavenでOracle JDBC(ojdbc.jar)を使うには | つかびーの技術日記](http://tsukaby.com/tech_blog/archives/99)

```bash
> mvn install:install-file -Dfile=path\to\ojdbc6.jar -DgroupId=com.oracle -DartifactId=ojdbc6 -Dversion=11.2.0 -Dpackaging=jar
```
pom.xml
```bash
    <dependency>
        <groupId>com.oracle</groupId>
        <artifactId>ojdbc6</artifactId>
        <version>11.2.0</version>
    </dependency>
```

#### WebJars
- [WebJars - Web Libraries in Jars](http://www.webjars.org/)


## 文法

- [2010-06-23 - sardineの日記](http://d.hatena.ne.jp/sardine/20100623)  
  静的初期化子（スタティック・イニシャライザ）
- [RuntimeExceptionとは : JavaA2Z](http://www.kab-studio.biz/Programing/JavaA2Z/Word/00000124.html)


## JSP / Servlet

- [Java Solution FAQ：セッションの開始・継続・終了](http://www.atmarkit.co.jp/fjava/javafaq/session/session04.html)
- [＠IT：Java TIPS -- リダイレクトとフォワードの違いを知る](http://www.atmarkit.co.jp/fjava/javatips/062jspservlet029.html)

### HTTP - Request

#### RequestDispatcher

<dl>
  <dt>forward</dt>
  <dd>渡されたリクエストを維持したまま別の JSP / Servlet に引き渡す</dd>
</dl>

#### Content-Disposition

__RFC1806: The Content-Disposition Header__
- [https://www.ietf.org/rfc/rfc1806.txt](https://www.ietf.org/rfc/rfc1806.txt)
- [RFC1806 日本語訳 - [RFC/技術資料] ぺんたん info](http://pentan.info/doc/rfc/j1806.html)

> <dl>
  <dt>inline</dt>
  <dd>もしディスプレイ上にメッセージが自動的に表示される事を意図しているなら、bodypart は `inline' としてマークされるべきである。マルチパートメッセージの普通のセマンティクスから、inline bodypart が存在する順序で提示されるべきである。</dd>
  <dt>attachment</dt>
  <dd>bodypart はメールメッセージのメインボディから分割されていることを示すために `attachment' として明示することができ、それらの表示は自動的ではなくユーザアクションしだいとすべきである。MUA はその代わりに、ビットマップ端末のユーザには添付データのアイコン表現を、キャラクタ端末には添付データの表示や保存を選択できるようにリストを提示するかもしれない。</dd>
> </dl>

#### POST Request Body

- [post \- Retrieving JSON Object Literal from HttpServletRequest \- Stack Overflow](https://stackoverflow.com/questions/1548782/retrieving-json-object-literal-from-httpservletrequest)

```java
String jsonString = IOUtils.toString(request.getInputStream());
JSONObject json = new JSONObject(jsonString);
MyObject myObject = new Gson().fromJson(jsonString, MyObject.class);
```

### HTTP - Response

> java.lang.IllegalStateException: Response has already been committed

ファイルのダウンロード処理を行なっているときに起きる。クライアント（ブラウザなど）にレスポンスを引渡し済みですよ、という意味。


## Application Server

#### [GlassFish](https://javaee.github.io/glassfish/)
The Open Source Java EE Reference Implementation

#### [Payara Server](http://www.payara.fish/)
Derived from GlassFish, with 24/7 Production Support.


## EJB
- [エンタープライズ：JBossで学ぶEJB入門](http://www.itmedia.co.jp/enterprise/special/0401/jboss/)


## Java Coding

- __[Javaでプログラムを書く際に意識しておきたいこと \- 覚えたら書く](http://blog.y-yuki.net/entry/2017/06/07/130000)__

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
- [ConcurrentHashMapという選択 - 技術開発日記](http://kechanzahorumon.hatenadiary.com/entry/2012/10/23/112551)

<table><tr><td> <strong>HashMap</strong></td><td> k=vの並びが適当 </td></tr><tr><td> <strong>Hashtable</strong></td><td> keyが降順(数が大から小へ数えた順番)になる </td></tr><tr><td> <strong>TreeMap</strong></td><td> keyが昇順(数が小から大へ)になる</td></tr><tr><td> <strong>LinkedHashMap</strong></td><td> k=vを入れた順番に並ぶ </td></tr></table>

#### [How to convert a Map to List in Java?](stackoverflow.com/questions/1026723/how-to-convert-a-map-to-list-in-java)
```java
Map<Key,Value> map;
List<Value> list = new ArrayList<Value>( map.values() );
```

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


### Singleton
- [Singleton パターン - Wikipedia](https://ja.wikipedia.org/wiki/Singleton_%E3%83%91%E3%82%BF%E3%83%BC%E3%83%B3)
```java
final class Singleton {
  private Singleton(){}
  private static class SingletonHolder {
    private static final Singleton instance = new Singleton();
  }
  public static Singleton getInstance() {
    return SingletonHolder.instance;
  }
}
```

### String.format

```java
String s1 = "equipment";
String s2 = "instruments";
String.format("All their %s and %s are alive.", s1, s2);
//=> All their equipment and instruments are alive.
```

```java
String.format("%05d", 1);
//=> 00001
```

```java
String.format("%,3d", 123456789)
//=> 123,456,789
```


### NVL

- [[java]JAVAでOracleのNVL()と同じ事を行う処理 | アマシィ](http://amaxi.sitemix.jp/blog/archives/1622)


### File

- [【Commons】FileUtilsで1行のコードでファイル読み込み : mwSoft blog](http://blog.mwsoft.jp/article/33331261.html)
- [Javaで1行ずつテキストデータを読み込むイディオムの変遷 - argius note](http://argius.hatenablog.jp/entry/2015/06/06/234315)


## Eclipse
- [Eclipseのショートカットキー](http://so-zou.jp/software/tech/tool/ide/eclipse/shortcut/)
- [新人研修でドヤ顔で披露したらウケたEclipseのショートカット集 - Qiita](http://qiita.com/arai-wa/items/c2eb7387b5bf37b4ace4)


## Database

#### Flyway
- [Flyway • Database Migrations Made Easy.](http://flywaydb.org/)
- [Flywayで簡単DBマイグレーション ｜ Developers.IO](http://dev.classmethod.jp/tool/flyway-db-migration/)
- [FlywayでDBスキーマのマイグレーションをしてみた | Siguniang's Blog](https://siguniang.wordpress.com/2013/11/10/db-schema-migration-made-easy-with-flyway/)


## Tips

### jarファイルを1つにまとめる

- [のjarファイルを1つに纏める - koichi’s swap memory](http://d.hatena.ne.jp/koichiarchi/20080116/1200447205)
- [Fat Jar Eclipse Plug-In](http://fjep.sourceforge.net/)
- [クラウドサービスプラットフォーム Cosminexus：Eclipse開発で使用するJARをユーザー･ライブラリーとしてまとめる：ソフトウェア：日立](http://www.hitachi.co.jp/Prod/comp/soft1/cosminexus/useful/tips/100304_eclipse-user-library.html)

#### 手順メモ
0. Pluginインストール
0. Eclipseをclean起動
0. 適当な新Javaプロジェクトをつくる
0. プロジェクトに適当なフォルダをつくる
0. まとめたいjarをそこに全部いれる
0. プロジェクトフォルダ右クリック「Fat Jar のビルド」
0. ダイアログが出たらまとめjarの名前つける
0. 対象に追加してチェック
0. 実行しておわり

### JAR・WAR・EAR の違い
- [あるシステム屋による開発の記録　JAR, WAR, EAR の違いについて](http://javasystem.blog4.fc2.com/blog-entry-3.html)

> JAR, WAR, EAR はいずれもJava仕様に準拠して定義されたZIP形式の圧縮ファイルである。
全てZIPファイルなので、解凍ツールなどで解凍して中身を見ることができる。
WAR, EARのフォルダ構造はJ2EE仕様によって明確に決められている。
特徴をまとめると、以下の通り:
- JARファイル  
  クラスファイルや設定ファイル(XML形式のものなど)がまとめられている。  
  多くのクラスライブラリはこの形式で配布されている。  
  WEBアプリケーションにおいては、MVCモデルにおける"M"の部分がまとめられる。  
  ※ "JAR"はJava ARchiveの略
- WARファイル  
  MVCモデルにおける"VC"の部分がまとめられる。  
  すなわち、クラスファイル(servlet)、設定ファイルのほか、JSPやHTMLファイルも含まれる。  
  また、web.xmlが含まれ、TomcatなどのアプリケーションサーバにWARファイルを配布すると、これを元にデプロイされる。  
  ※ "WAR"は[Web Application Archive](http://javasystem.blog4.fc2.com/blog-entry-17.html)の略
- EARファイル  
  のWARファイル、(EJB)JARファイルを含む。  
  また、application.xmlが含まれ、アプリケーションサーバを含んだJ2EEコンテナ(JBoss, WebSphereなど)に配布すると、これを元にデプロイされる。  
  ※ "EAR"は"Enterprise Archive"の略

- [java - .war vs .ear file - Stack Overflow](http://stackoverflow.com/questions/1594667/war-vs-ear-file)

> In J2EE application, modules are packaged as EAR, JAR and WAR based on their functionality
>
>JAR: EJB modules which contain enterprise java beans (class files) and EJB deployment descriptor are packed as JAR files with .jar extenstion
>
>WAR: Web modules which contain Servlet class files, JSP Files, supporting files, GIF and HTML files are packaged as JAR file with .war (web archive) extension
>
>EAR: All above files (.jar and .war) are packaged as JAR file with .ear (enterprise archive) extension and deployed into Application Server.

### RePackaging war / ear
解凍

    jar xvf career.ear

パッケージング

    jar cvf career.war *

    jar cvf career.ear *

オプションの意味

    c  新規jarファイルを作成
    v  コマンドラインに処理内容を表示
    f  jarファイル名を指定する
    x  jarの中身を取り出す
    t  jarファイルの中身を表示

※ jarコマンドはjdkのbinに入っているのでパスを通しておく
