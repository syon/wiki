### SubとFunctionの違いとPublicとPrivateの違い

- [[Excel](http://wada811.blogspot.com/2012/04/excelvbasubfunctionpublicprivate.html)[| DevAchieve](VBA]SubとFunctionの違いとPublicとPrivateの違い)

<table class="wikitable">
<tr>
  <th></th><th>マクロの実行</th><th>ユーザー定義関数</th><th>戻り値</th>
</tr>
<tr>
  <th>Sub</th><td>表示される</td><td>表示されない</td><td>返すことができない</td>
</tr>
<tr>
  <th>Private Sub</th><td>表示されない</td><td>表示されない</td><td>返すことができない</td>
</tr>
<tr>
  <th>Function</th><td>表示されない</td><td>表示される</td><td>返すことができる</td>
</tr>
<tr>
  <th>Private Function</th><td>表示されない</td><td>表示されない</td><td>返すことができる</td>
</tr>
</table>

### 読み取り専用にする

<pre>
    ActiveWorkbook.Saved = True
    ActiveWorkbook.ChangeFileAccess Mode:=xlReadOnly
    ActiveWorkbook.Saved = False
</pre>

### セル範囲に一括反映

<pre>
Sub RangePaste()
    Dim rng As Variant    '型はRangeではなくVariant
    rng = Range("A1:J30") 'Setは書かない
    
    Dim i, j As Integer
    For i = 1 To UBound(rng)
        For j = 1 To 10
            rng(i, j) = "abc"
        Next
    Next
    
    Range("A1:J30") = rng '反映
End Sub
</pre>

### Rangeオブジェクト

- [VBA基本(RangeオブジェクトとRangeを返すプロパティ)](http://www.asahi-net.or.jp/~ef2o-inue/vba_k/sub04_070_10.html)
<pre>
    Dim rng As Range
    Set rng = Range(Cells(1, 1), Cells(5, 4))       'Cellsによる指定
    Set rng = Range("A1").Resize(5, 4)              '開始セルの指定とリサイズ
    Set rng = Range("A1").Resize(5, 4).Offset(1, 1) 'オフセット
</pre>

## CSV

- [EXCELでCSVファイルの入出力](http://jut.homeip.net/kata/excelcsv/excelcsv.htm)  
  マクロ本体もダウンロードできる

- [MS Excel のCSV読み込み不具合対策](http://hirz.s100.xrea.com/doc/excelcsv.html)  
  標準書式での読込を回避し、CSVの全項目を文字列として読み込むマクロ

- [Excel2Csv](https://gist.github.com/syon/f16494c9cca2a9893a9a)

## PDF

### PDF保存

- [2007 Microsoft Office プログラム用 Microsoft PDF/XPS 保存アドイン](http://www.microsoft.com/downloads/ja-jp/details.aspx?FamilyID=4d951911-3e7e-4ae6-b059-a2e79ed87041&displaylang=ja)

- [Office2007以降](http://goo.gl/G3ueN)  
  “Office2007には、PDFやXPSファイルへ変換するためのアドインが提供されていますし、Office2010からは標準でそう言った機能を持っていますが、
残念ながらOffice2003までにはそうした機能がありません。”

### マクロでPDF出力

「Microsoft PDF/XPS 保存アドイン」を使って、マクロ記録でコード生成してみる。

<pre>
Sub PdfFileOut()
    ActiveSheet.ExportAsFixedFormat Type:=xlTypePDF, Filename:= _
        "C:\Temp\hoge.pdf", Quality:=xlQualityStandard, IncludeDocProperties:=True _
        , IgnorePrintAreas:=False, OpenAfterPublish:=False
End Sub
</pre>

### PDFファイルの結合

- [バッチコマンドから“pdftk”(PDFツールキット)でpdfファイルを結合](http://d.hatena.ne.jp/gzutetsu/20100703/p1)

<pre>
pdftk *.pdf cat output hoge.pdf
</pre>

### 参考

- [VBA(Excel)からAcrobat経由でPDFをプログラミング操作(OLE:IAC)する](http://pdf-file.nnn2.com/)
- [NonSoft - PDFファイルを結合するサンプル(VB.NET)](http://homepage2.nifty.com/nonnon/SoftSample/VB.NET/SamplePdfConcat.html)
- [pdftk（pdfツールキット）でpdfファイルを結合 - グズてつのぼやき](http://d.hatena.ne.jp/gzutetsu/20100703/p1)
- [エクセルのマクロでPDFファイルを印刷 | Office系ソフトのQ&A【OKWave】](http://okwave.jp/qa/q3415031.html)
- [VBでPDFファイルを編集する | Visual BasicのQ&A【OKWave】](http://okwave.jp/qa/q194124.html)

## Webサービス

- [【ハウツー】Excel VBAでWebサービス - ExcelでTwitterと連携する (1) OAuth認証について | パソコン | マイナビニュース](http://news.mynavi.jp/articles/2011/09/16/excelweb/index.html)

## シェイプ

- [マクロの登録を使って、オートシェイプどうしをカギ線矢印コネクタでつなぐ - Visual Basic - 教えて！goo](http://oshiete.goo.ne.jp/qa/4251853.html)

## メモ

- [VBA応用(テキストデータの書き出し)](http://www.asahi-net.or.jp/~ef2o-inue/vba_o/sub05_110_040.html)
- [あるシステム屋による開発の記録　Excel VBAで可変長リスト(Collection)を使用する](http://javasystem.blog4.fc2.com/blog-entry-433.html)
- [VBAマクロでCSV出力 - Visual Basic - 教えて！goo](http://oshiete.goo.ne.jp/qa/3480695.html)
- [FileSystemObjectの使い方まとめ - 今日覚えたこと](http://d.hatena.ne.jp/nacookan/20080221/1203607060)  
  "あらかじめ参照設定に「Microsoft Scripting Runtime」を追加しておく。参照設定は、VB6なら「プロジェクト」メニュー、VBAなら「ツール」メニューにある。"
- [Excel でブックを閉じるときに表示される "変更を保存しますか?" というメッセージを非表示にする方法](http://support.microsoft.com/kb/213428/ja)
- [Rangeのプロパティ｜Excelすごい改善 すごいエクセル](http://ameblo.jp/make-excel/entry-11130039687.html)
- [三流君VBA:Excel 範囲を選択して、カンマ区切りのファイルを作る](http://www.ken3.org/vba/backno/vba102.html)
- [【ハウツー】 Excel VBAでWebサービス - ExcelでGoogleマップを表示しよう (1) はじめに | パソコン | マイナビニュース](http://news.mynavi.jp/articles/2012/04/24/excelvba/index.html)
- [「EXCEL VBA」を使って、「Google（http://www.google.co.jp/）.. - 人力検索はてな](http://q.hatena.ne.jp/1171778340)
- [Excel(エクセル)VBA入門：セルにコメントを付ける](http://www.eurus.dti.ne.jp/yoneyama/Excel/vba/vba_comment.html)
- [シート名一覧を作成したい:Excel VBA・エクセルマクロのサンプル](http://www.relief.jp/itnote/archives/000960.php)