# Java Library

- __[Javaを使うなら知っておきたい技術、フレームワーク、ライブラリ、ツールまとめ - Qiita](http://qiita.com/disc99/items/727b51dbe737602a5c91)__
- [＠IT：Java TIPS -- EclipseでライブラリとJavadocを関連付ける](http://www.atmarkit.co.jp/fjava/javatips/072eclipse024.html)


## [Spring Framework](http://projects.spring.io/spring-framework/)
Core support for dependency injection, transaction management, web applications, data access, messaging, testing and more.

- [Springの記事のまとめ - コンピュータクワガタ](http://kuwalab.hatenablog.jp/entry/spring)

### DataBase on Spring

#### Spring JDBC
- [Spring JDBCの紹介 No. 1 - コンピュータクワガタ](http://kuwalab.hatenablog.jp/entry/spring_jdbc/1)

#### NamedParameterJdbcTemplate
- [Spring JDBCの紹介 No. 2 - コンピュータクワガタ](http://kuwalab.hatenablog.jp/entry/spring_jdbc/2)
- [java - Named parameters in JDBC - Stack Overflow](http://stackoverflow.com/questions/2309970/named-parameters-in-jdbc)
[java - Named parameters in JDBC - Stack Overflow](http://stackoverflow.com/questions/2309970/named-parameters-in-jdbc)

```java
NamedParameterJdbcTemplate jdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
MapSqlParameterSource paramSource = new MapSqlParameterSource();
paramSource.addValue("name", name);
paramSource.addValue("city", city);
jdbcTemplate.queryForRowSet("SELECT * FROM customers WHERE name = :name AND city = :city", paramSource);
```

#### JNDI DataSource
- [java - How to use JNDI DataSource provided by Tomcat in Spring? - Stack Overflow](http://stackoverflow.com/questions/9183321/how-to-use-jndi-datasource-provided-by-tomcat-in-spring)
- [Spring DataSource JNDI with Tomcat Example | JournalDev](http://www.journaldev.com/2597/spring-datasource-jndi-with-tomcat-example)


## Spring Boot

- [今学ぶJava(1) - Spring Bootどうでしょう - syonx](http://syonx.hatenablog.com/entry/2015/05/05/034359)
- [今学ぶJava(3) - Maven・Spring Boot体験 「Rubyでいうと…」 - syonx](http://syonx.hatenablog.com/entry/2015/05/06/022545)
- [今学ぶJava(4) - Spring Boot + Thymeleaf - syonx](http://syonx.hatenablog.com/entry/2015/05/06/151032)
- [今学ぶJava(5) - Spring Boot + データベース - syonx](http://syonx.hatenablog.com/entry/2015/05/06/192203)
- [spring-boot - Spring Boot 使い方メモ - Qiita](http://qiita.com/opengl-8080/items/05d9490d6f0544e2351a)
- [Spring Boot + Netflix Eureka](http://www.slideshare.net/shintanimoto/spring-boot-netflix-eureka)


## [Play Framework](https://www.playframework.com/)
Build Modern & Scalable Web Apps with Java and Scala  
Ruby on Railsの哲学をJavaで実現することを目的としたフレームワーク

- [Javaの常識を変えるPlay framework入門](http://www.atmarkit.co.jp/fjava/index/index_play.html)
- [「Scala＋Play 2.0でWebアプリ開発入門」最新記事一覧 - ITmedia Keywords](http://www.atmarkit.co.jp/ait/kw/scalaplay.html)
- [ScalaのWebアプリケーションフレームワーク「Play Framework」入門：CodeZine](http://codezine.jp/article/detail/7580)
- [Node.js vs Play Framework (with Japanese subtitles)](http://www.slideshare.net/brikis98/nodejs-vs-play-framework-with-japanese-subtitles)
- [PlayFrameworkに関する168件の投稿 - Qiita](http://qiita.com/tags/playframework)
- [【#Play】Play Framework 2.3 (Scala) を使った Web システム開発入門 #Play_ja #Scala #rpscala - Qiita](http://qiita.com/kukita/items/6326f1439abec013a479)

#### Install
- [Play のインストール (2.3.x)](https://www.playframework.com/documentation/ja/2.3.x/Installing)  
  Play 2.3 から `activator` コマンドによるインストールに変更されている
- [Windows - Typesafe ActivatorでPlay framework 2実行環境を整える - Qiita](http://qiita.com/nownabe/items/996df00392e60b5ea3e0)


## [Spark Framework](http://sparkjava.com/)
Spark - A tiny Sinatra inspired framework for creating web applications in Java 8 with minimal effort

- [Java - Spark Framework使い方メモ - Qiita](http://qiita.com/opengl-8080/items/801b32a8d44089fa1c04)


## Apache Commons
[Apache Commons](http://commons.apache.org/)  
The Commons is an Apache project focused on all aspects of reusable Java components.

#### [Lang](http://commons.apache.org/proper/commons-lang/)
Provides extra functionality for classes in java.lang.

- Javadoc: [Overview (Apache Commons Lang 3.3.2 API)](http://commons.apache.org/proper/commons-lang/javadocs/api-release/index.html)
    - [StringUtils](http://commons.apache.org/proper/commons-lang/javadocs/api-release/index.html?org/apache/commons/lang3/StringUtils.html)

#### [IO](http://commons.apache.org/proper/commons-io/)

- [Java - 知らないと損しそうなApache Commonsの機能集 - Qiita](http://qiita.com/horimislime/items/a9b9cf89e13cc9639ff2)

#### [FileUpload](http://commons.apache.org/proper/commons-fileupload/)

- [Javaファイルアップロードメモ(Hishidama's FileUpload Memo)](http://www.ne.jp/asahi/hishidama/home/tech/apache/commons/fileup.html)

#### [BeanUtils](http://commons.apache.org/proper/commons-beanutils/)
Easy-to-use wrappers around the Java reflection and introspection APIs.

- [＠IT：Java TIPS -- リクエストデータをJavaBeansにセット（Commons活用）](http://www.atmarkit.co.jp/fjava/javatips/090jakarta010.html)  
  Commons BeanUtils を使用したサンプル

#### [DbUtils - JDBC Utility Component](http://commons.apache.org/proper/commons-dbutils/)
JDBC helper library.

- [DBの値を自動でJavaオブジェクトに変換するライブラリ「DBUtils」のご紹介 （1/4）：CodeZine](http://codezine.jp/article/detail/7584)


## Apache POI

- → __[[Apache POI|apache-poi]]__


## JSON

#### Jackson
- [Jackson JSON Processor | Java プログラミング解説](http://so-zou.jp/software/tech/programming/java/package/json/jackson.htm)
- [FasterXML/jackson-core · GitHub](https://github.com/FasterXML/jackson-core)
- [FasterXML/jackson-databind · GitHub](https://github.com/FasterXML/jackson-databind)
- [FasterXML/jackson-annotations · GitHub](https://github.com/FasterXML/jackson-annotations)

#### [Google Gson](https://github.com/google/gson)
- [Java - GSONの基本的な使い方 - Qiita](http://qiita.com/u-chida/items/cbdd040e4199a10936dc)
- [google-gsonメモ - Qiita](http://qiita.com/yyoshikaw/items/850639ebf49ecfbc978c)

