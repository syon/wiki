---
slug: apache-poi
title: apache-poi
layout: page.jade
---

# Apache POI

<div id="gollum-heading">
  <h2>
    <a href="http://poi.apache.org/">Apache POI</a>
  </h2>
  <p>the Java API for Microsoft Documents</p>
</div>

## Links

- [Overview (POI API Documentation)](http://poi.apache.org/apidocs/overview-summary.html)
- [POIのHSSFを使ってExcelに画像を挿入 - No Programming, No Life](http://npnl.hatenablog.jp/entry/20081122/1227337357)
- [Javaでの画像ファイルをリサイズしてExcelに一括貼り付け（POI） - Qiita](http://qiita.com/mojaie/items/ace880e817e80f7746c0)
- [POI Cellメモ(Hishidama's Java POI Cell Memo)](http://www.ne.jp/asahi/hishidama/home/tech/apache/poi/cell.html)
- [java - How to know number of sheets in a workbook? - Stack Overflow](http://stackoverflow.com/questions/2077566/how-to-know-number-of-sheets-in-a-workbook)


## Code samples

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
