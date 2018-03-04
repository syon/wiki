---
slug: thinreports
title: ThinReports
layout: page.jade
---

## 帳票ソリューション for Ruby and Rails

ThinReports は PDF 形式の帳票生成を Ruby によって実現するシンプルで新しいソリューションです。 ThinReports が提供する専用レイアウトエディタ ThinReports Editor と 専用ライブラリ ThinReports Generator によって、Ruby や Ruby on Rails のような Ruby製のフレームワークを使った帳票開発の負担を軽減 - thin - することを目指します。

### [ThinReports Editor](http://www.thinreports.org/features/editor/)

GUI上で帳票レイアウトを作成・編集できる 専用レイアウトエディタ

- レイアウト定義のエクスポート（仕様書の自動生成）
- 単位mmによるデザイン（mm⇔pxの変換とデフォルト単位設定）
- 標準フォントのビルトイン（IPAフォント/Courier/Times Roman/Helvetica）
- タブによる複数レイアウトの同時編集
- 定型用紙サイズ A3/A4/B4(JIS,ISO)/B5(JIS,ISO) と、ユーザ定義サイズの指定
- 基本図形の描画、編集 (四角形、線形、楕円形、静的テキスト)
- 動的/静的テキスト領域における横位置、縦位置指定
- 動的/静的テキストにおける行間、文字間隔指定
- 静的画像の埋め込み機能 (PNG/JPEG)
- Generator によって動的にテキストデータを埋込むことが可能なテキストブロック機能
- Generator によって動的にイメージを埋込むことが可能なイメージブロック機能
- レポート全体又はリストのページ番号を任意の書式で自動的に表示するページ番号機能
- 日付時刻書式、数値書式などの簡易書式機能
- 自動改ページ、ページフッター、フッター機能を有するリスト機能
- ユーザ補助機能
    - グリッドの表示
    - 拡大縮小機能
    - 元に戻す、やり直し機能 (Undo/Redo)
    - 吸着レイアウトガイド機能 (図形の整列に利用)
    - 図形の複数選択機能による一括属性変更、整列機能
    - レイヤー機能 (前面、最前面、背面、再背面)

### [ThinReports Generator for Ruby](http://www.thinreports.org/features/generator/)

Ruby プログラムからレイアウトを操作する 専用ライブラリ

- 外字のサポート（外字を含む帳票の生成）
- 動的スタイルのサポート（テキストカラー/テキストの配置/罫線の太さ・色/塗りの色/フォントスタイル）
- 標準フォントのビルトイン（IPAフォント/Courier/Times Roman/Helvetica）
- Editor で定義されたテキストブロックに対する値の埋め込み
- Editor で定義されたイメージブロックに対するローカルイメージファイル又はURLの指定

### [REPOTEN API](http://repoten-api.net/)

WEB の新しい PDF 生成プラットフォーム

### Articles

- [Webベースの基幹系システムで取り入れたい。日本製PDF帳票作成ソフトウェア·ThinReports MOONGIFT](http://www.moongift.jp/2011/11/20111122-2/)

### Study

- [ThinReports Rails3 Example](https://github.com/thinreports/thinreports-rails3-example)
    - [Rails3で帳票印刷を試す～thinreports | Scimpr Blog](http://blog.scimpr.com/2012/10/22/rails3%E3%81%A7%E5%B8%B3%E7%A5%A8%E5%8D%B0%E5%88%B7%E3%82%92%E8%A9%A6%E3%81%99%EF%BD%9Ethinreports/)
