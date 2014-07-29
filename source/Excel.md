## まとめ記事

- [仕事が捗る！知ってると重宝するExcel（エクセル）の使い方記事まとめ | nanapi](http://nanapi.jp/109323/)
- [【名言続出】田中亨氏のExcel講義が面白すぎる - NAVER まとめ](http://matome.naver.jp/odai/2137837284176430301)

## 使い方の知識

### キーボードショートカット

{| class="wikitable"
|-
! キー
! 内容
|-
! Ctrl + D
| 単セル選択中で上のセルをコピー、複セル選択中で選択開始セル(未反転セル)を下にコピー。※Down, Duplicate
|-
! Ctrl + R
| 単セル選択中で左のセルをコピー、複セル選択中で選択開始セル(未反転セル)を複製。※Right, Replicate
|-
! Ctrl + G または F5
| ジャンプ<br />→ Alt + S：セルの選択<br />　→ K：空白セル選択<br />　→ F → (下→Spase)×3 → Enter：エラーセル選択
|-
! F4
| 直前の操作の繰り返し。塗りつぶしや行削除の目視＆実行に有効。
|-
! F12
| 名前を付けて保存
|}

### 読み取り専用を推奨する

0. 名前を付けて保存
0. ツール(L)
0. 全般オプション(G)...
0. 読み取り専用を推奨する(R)

### CSV取り込み

0. データタブ
0. テキストファイル

### [最後のセル(Ctrl+End)]の位置を修正する

0. Ctrl+End
0. 余分な行と列を全体選択して削除
0. 保存 ←重要

### ワイルドカードの使い方

- [エクセル2007:ワイルドカードの使い方](http://www.excel-img.com/database07.html)
: 「アスタリスク*」 任意の文字列
: 「半角疑問符?」 任意の1文字
: 「チルダ~」 エスケープ

### フィルタされたセルのみ選択

- [Ｅｘｃｅｌ2007でフィルターをかけたままで色づけするとフィルターのかかっていな... - Yahoo!知恵袋](http://detail.chiebukuro.yahoo.co.jp/qa/question_detail/q1311472753)
    - データを抽出したらその表をドラッグ→「ホーム」タブ→「編集」グループの「検索と置換」→「ジャンプ」→「セル選択」→[可視セル]にチェックをつけて「OK」
    - Alt + ;

## 環境

### Excelファイル右クリックメニューの「印刷(P)」を消す

- [右クリックメニューから「印刷」なんかしねぇよ！ - 「ん」の失踪](http://d.hatena.ne.jp/orzi/20120208/p4)
```bash
Windows Registry Editor Version 5.00

[HKEY_CLASSES_ROOT\Excel.Sheet.12\shell\Print]
"LegacyDisable"=""
[HKEY_CLASSES_ROOT\Excel.Sheet.12\shell\Printto]
"LegacyDisable"=""
[As](HKEY_CLASSES_ROOT\Excel.Sheet.12\shell\Save)
"LegacyDisable"=""
```

これを Excel2007_RightClickMenu_PrintOFF.reg というファイル名で保存して実行。Excel2007 = Excel12。


## メモ

- [表示や印刷設定を複数登録！ユーザー設定のビュー--Excel・エクセル](http://kokoro.kir.jp/excel/view-user.html)
- [エクセル：色の付いたデータをまとめて抽出したい。 - Office系ソフト - 教えて！goo](http://oshiete.goo.ne.jp/qa/4674921.html)
- [Excel(エクセル)基本講座：SUMPRODUCT関数](http://www.eurus.dti.ne.jp/~yoneyama/Excel/kansu/sumproduct.htm)

## 条件付き書式

### テーブル定義向け

```vb
1つ上のセルと同じ → 文字色をグレーに
適用先: $A:$C
=INDIRECT(ADDRESS(ROW(),COLUMN()))=INDIRECT(ADDRESS(ROW()-1,COLUMN()))

その行の2列目が、1つ上の行の2列目と違う → セルの上に罫線
適用先: $B:$I
=INDIRECT(ADDRESS(ROW(),2))<>INDIRECT(ADDRESS(ROW()-1,2))

その行の1列目が、1つ上の行の1列目と違う → セルの上に罫線
適用先: $A:$A
=INDIRECT(ADDRESS(ROW(),1))<>INDIRECT(ADDRESS(ROW()-1,1))
```

## 数式

### 値の表示形式指定

```vb
=TEXT(A1,"@")
=TEXT(A1,"yyyy/mm/dd")
=TEXT(A1,"0")
```

### オフセット参照

```vb
=SUM(A1:A10)
=SUM(A1:OFFSET(A11,-1,0))  ※基準セルから上に１、右に０

OFFSET(基準, 行数, 列数, [[幅](高さ],))
```

### アドレス文字列をもとに値を取得

```vb
=INDIRECT("A1")　　　　　　　　　　　　※A1セルの値
=INDIRECT("Sheet1!A1")　　 　　　　　　※Sheet1のA1セルの値
=INDIRECT("A"&ROW())　　　　　　　　　 ※自行のA列値
=INDIRECT(ADDRESS(1,1))　　　　　　　　※A1セルの値
=INDIRECT(ADDRESS(ROW(),COLUMN()))　　 ※自セル値
=INDIRECT(ADDRESS(ROW()-1,COLUMN()))　 ※上セル値
=INDIRECT(ADDRESS(ROW(),COLUMN()-1))　 ※左セル値
```

### 列の英字を取得

列が英字(A1形式)のときの英字を返す。
R1C1形式でも結果は同じ(ADDRESSの第4引数で明示的に指定している)。

```vb
=LEFT(ADDRESS(ROW(),COLUMN(),4),LEN(ADDRESS(ROW(),COLUMN(),4,TRUE))-LEN(ROW()))
```

### 改行チェック

改行が見つかったら改行文字が何番目かの数値が返る。改行がない場合は #VALUE! エラー。

```vb
=SEARCH(CHAR(10),A1)
```

### 改行を削除した文字列を取得

```vb
=CLEAN(A1)　　　　　　　　　　 ※印刷できない文字を文字列から削除 http://office.microsoft.com/ja-jp/excel-help/HP005209014.aspx
=SUBSTITUTE(A1,CHAR(10),"")　　※改行コードのみ除去
```

### ハイパーリンク

```vb
=HYPERLINK(CONCATENATE("[ファイル名.xls]","シート名","!A1"),"リンク")
```

### 現在のExcelファイル名をセルに挿入する

- [現在の Excel ファイル名をセルに挿入する - Excel - Office.com](http://office.microsoft.com/ja-jp/excel-help/HA001034627.aspx)

```vb
=MID(CELL("filename"),SEARCH("[SEARCH("](",CELL("filename"))+1,)",CELL("filename"))-SEARCH("[",CELL("filename"))-1)
```

### 色のついたセルをカウント・集計

- [色のついたセルをカウント・集計](http://miyahorinn.fc2web.com/faq/faq030.html)
- [エクセルでフィルタをかけたいのですが、セルにつけた色でフィルタできるのでしょ... - Yahoo!知恵袋](http://detail.chiebukuro.yahoo.co.jp/qa/question_detail/q1215403792)

## マクロ

### シート名の一覧を作成

- [ワークシート名一覧を作成したい](http://www.relief.jp/itnote/archives/000960.php)

```vb
Sub シート名の一覧を作成()

  Dim objSheet As Object
  Dim intLoop As Integer

  intLoop = ActiveCell.Row
  startRow = ActiveCell.Row

  For Each objSheet In ActiveWorkbook.Sheets
    ActiveWorkbook.ActiveSheet.Cells(intLoop, ActiveCell.Column).Value = objSheet.Name
    If objSheet.Name <> WorksheetFunction.Clean(objSheet.Name) Then
        MsgBox ("印刷できない文字が含まれています。" & vbNewLine & vbNewLine & intLoop - startRow + 1 & ". " & objSheet.Name)
    End If
    intLoop = intLoop + 1
  Next

End Sub
```

```vb
Sub シート名の一覧リンクを作成()

  Dim objSheet As Object
  Dim intLoop As Integer
  Dim fx As String

  intLoop = ActiveCell.Row
  startRow = ActiveCell.Row

  For Each objSheet In ActiveWorkbook.Sheets
    fx = "=HYPERLINK(CONCATENATE(""[& ActiveWorkbook.Name & "](")"",""'" & objSheet.Name & "'"",""!A1""),""" & objSheet.Name & """)"
    ActiveWorkbook.ActiveSheet.Cells(intLoop, ActiveCell.Column).Formula = fx
    If objSheet.Name <> WorksheetFunction.Clean(objSheet.Name) Then
        MsgBox ("印刷できない文字が含まれています。" & vbNewLine & vbNewLine & intLoop - startRow + 1 & ". " & objSheet.Name)
    End If
    intLoop = intLoop + 1
  Next

End Sub
```

### 選択シートのズームリセット

```vb
Sub 選択シートのズームリセット()
    Dim ws As Worksheet
    Dim i As Integer
    ActiveWindow.Zoom = 100
    i = 0
    For Each ws In ActiveWindow.SelectedSheets
        i = i + 1
        ws.Activate
        ws.Range("A1").Select
    Next
End Sub
```

### 参照元トレース表示

```vb
Sub 参照元トレース表示()
  Dim ActCell As Range
  Dim ActObj As Range
  Dim ActADR As String
  Set ActCell = Selection.SpecialCells(xlCellTypeFormulas, 23)

  For Each ActObj In ActCell
    On Error GoTo ER
    ActADR = ActObj.Address
    Range(ActADR).Activate
    ActiveCell.ShowPrecedents
  Next

  ER:
    Range("A1").Select
End Sub
```

### セルコメント操作

セル選択をしないとシート全体が対象になる

```vb
Sub 選択セルのコメント表示()
  'http://www.eurus.dti.ne.jp/yoneyama/Excel/vba/vba_comment.html
  Dim c As Range
  For Each c In Selection.SpecialCells(xlCellTypeComments)
    If c.Comment Is Nothing Then
    Else
      c.Comment.Visible = True
    End If
  Next
End Sub

Sub 選択セルのコメントをリサイズ()
  Dim c As Range
  For Each c In Selection.SpecialCells(xlCellTypeComments)
    If c.Comment Is Nothing Then
    Else
      c.Comment.Shape.TextFrame.AutoSize = True
    End If
  Next
End Sub

Sub 選択セルのコメント非表示()
  Dim c As Range
  For Each c In Selection.SpecialCells(xlCellTypeComments)
    If c.Comment Is Nothing Then
    Else
      c.Comment.Visible = False
    End If
  Next
End Sub

Sub 選択セルのコメント情報()
  Dim c As Range
  For Each c In Selection.SpecialCells(xlCellTypeComments)
    If c.Comment Is Nothing Then
    Else
      'イミディエイト ウィンドウ  Ctrl+G
      Debug.Print "[Address] " & c.Address
      Debug.Print "[](Author) " & c.Comment.Author
      Debug.Print "[](Parent) " & c.Comment.Parent
      Debug.Print "[  ](Text) " & c.Comment.Text
      Debug.Print "-----------------"
      
    End If
  Next
End Sub
```
