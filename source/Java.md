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


## [Play Framework](https://www.playframework.com/)
Build Modern & Scalable Web Apps with Java and Scala  
Ruby on Railsの哲学をJavaで実現することを目的としたフレームワーク

- [Javaの常識を変えるPlay framework入門](http://www.atmarkit.co.jp/fjava/index/index_play.html)
- [「Scala＋Play 2.0でWebアプリ開発入門」最新記事一覧 - ITmedia Keywords](http://www.atmarkit.co.jp/ait/kw/scalaplay.html)
- [ScalaのWebアプリケーションフレームワーク「Play Framework」入門：CodeZine](http://codezine.jp/article/detail/7580)
- [Node.js vs Play Framework (with Japanese subtitles)](http://www.slideshare.net/brikis98/nodejs-vs-play-framework-with-japanese-subtitles)
- [PlayFrameworkに関する168件の投稿 - Qiita](http://qiita.com/tags/playframework)
- [【#Play】Play Framework 2.3 (Scala) を使った Web システム開発入門 #Play_ja #Scala #rpscala - Qiita](http://qiita.com/kukita/items/6326f1439abec013a479)


## ライブラリ

- __[Javaを使うなら知っておきたい技術、フレームワーク、ライブラリ、ツールまとめ - Qiita](http://qiita.com/disc99/items/727b51dbe737602a5c91)__
- [＠IT：Java TIPS -- EclipseでライブラリとJavadocを関連付ける](http://www.atmarkit.co.jp/fjava/javatips/072eclipse024.html)

### [Apache Commons](http://commons.apache.org/)
The Commons is an Apache project focused on all aspects of reusable Java components.

#### [Lang](http://commons.apache.org/proper/commons-lang/)
Provides extra functionality for classes in java.lang.

- Javadoc: [Overview (Apache Commons Lang 3.3.2 API)](http://commons.apache.org/proper/commons-lang/javadocs/api-release/index.html)
    - [StringUtils](http://commons.apache.org/proper/commons-lang/javadocs/api-release/index.html?org/apache/commons/lang3/StringUtils.html)

#### [IO](http://commons.apache.org/proper/commons-io/)

- [Java - 知らないと損しそうなApache Commonsの機能集 - Qiita](http://qiita.com/horimislime/items/a9b9cf89e13cc9639ff2)

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

#### テンプレートExcelファイルを用意してデータを埋め込んでダウンロードするサンプル
```java
FileInputStream fis = new FileInputStream( "C:\\TemplateBook.xlsx" );
Workbook workbook = WorkbookFactory.create( fis );
Sheet sheet = workbook.getSheet( "Sheet1" );
int i = 0;
for (Row row : sheet) {
	for (Cell cell : row) {
		cell.setCellValue( "_" + i + "_" );
		i++;
	}
}
ByteArrayOutputStream baos = new ByteArrayOutputStream();
workbook.write( baos );
response.setContentType( "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" );
response.setHeader( "Content-Disposition", "attachment; filename=\"YourBook.xlsx\"" );
// :
// :
response.flushBuffer();
```
MIME type of `.xlsx` - [Description of the default settings for the MimeMap property and for the ScriptMaps property in IIS](http://support.microsoft.com/kb/936496/en-us)


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

### HTTP - Response

> java.lang.IllegalStateException: Response has already been committed

ファイルのダウンロード処理を行なっているときに起きる。クライアント（ブラウザなど）にレスポンスを引渡し済みですよ、という意味。


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


### NVL

- [[java]JAVAでOracleのNVL()と同じ事を行う処理 | アマシィ](http://amaxi.sitemix.jp/blog/archives/1622)


## Eclipse
- [Eclipseのショートカットキー](http://so-zou.jp/software/tech/tool/ide/eclipse/shortcut/)
- [新人研修でドヤ顔で披露したらウケたEclipseのショートカット集 - Qiita](http://qiita.com/arai-wa/items/c2eb7387b5bf37b4ace4)


## Tips

### 複数のjarファイルを1つにまとめる

- [複数のjarファイルを1つに纏める - koichi’s swap memory](http://d.hatena.ne.jp/koichiarchi/20080116/1200447205)
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
  複数のWARファイル、(EJB)JARファイルを含む。  
  また、application.xmlが含まれ、アプリケーションサーバを含んだJ2EEコンテナ(JBoss, WebSphereなど)に配布すると、これを元にデプロイされる。  
  ※ "EAR"は"Enterprise Archive"の略

- [あるシステム屋による開発の記録　JAR, WAR, EAR の違いについて](http://javasystem.blog4.fc2.com/blog-entry-3.html)


## Articles
- [プログラミング未経験だった僕がJava EE 6を学び始めて1年で読んだ良記事まとめ](http://yukiyan.com/2014/12/05/javaee/)
- [Javaエンジニアのためのアーキテクト講座-JJUG CCC 2014 Fall](http://www.slideshare.net/yusuke/jjugccc2014fall-architect)
