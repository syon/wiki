- [MediaWikiサイトをGoogle Analyticsに対応させるためには - omotenashi-mind](http://www.omotenashi-mind.com/index.php/MediaWiki%E3%82%B5%E3%82%A4%E3%83%88%E3%82%92Google_Analytics%E3%81%AB%E5%AF%BE%E5%BF%9C%E3%81%95%E3%81%9B%E3%82%8B%E3%81%9F%E3%82%81%E3%81%AB%E3%81%AF)

## インストール

### ドキュメント確認

- [インストールガイド](http://www.mediawiki.org/wiki/Manual:Installation_guide/ja)
- [インストール](http://www.mediawiki.org/wiki/Manual:Installing_MediaWiki/ja)
- [インストール要件](http://www.mediawiki.org/wiki/Manual:Installation_requirements/ja)  
  PHPバージョン5.3.2以降
- [MediaWiki よくある質問と回答](http://www.mediawiki.org/wiki/Manual:FAQ/ja)  
  URLの形式を変更するにはWebサーバの設定を変更する必要がある。

### ダウンロード

- [mediawiki-1.22.1.tar.gz](http://www.mediawiki.org/wiki/Download/ja)

### FTPアップロード

FileZillaを使ってアップロード。

### セットアップ

- オプション
    - 利用者権限のプロファイル: 承認された編集者のみ
    - メール送信を有効にする: OFF
- 生成されたLocalSettings.phpファイル基準ディレクトリ (index.phpと同じディレクトリ) に設置

### ロゴ画像の設定

```bash
skins/common/images/wiki.png
```

### CSS

- [Manual:Skin configuration/ja - MediaWiki](http://www.mediawiki.org/wiki/Manual:Skin_configuration/ja)  
  管理者はレンダリングされるすべてのページに追加されるサイト全体のCSSルールを指定することができます。  
  これらのルールはMediaWiki:Common.cssを編集することで追加することができます。  
  下記にアクセス  
  `/index.php?title=MediaWiki:Common.css`
```css
h2 {
  padding-top: 1.5em;
}
```

### サイトマップの作成

- [MediaWikiのカスタマイズ（１０）　sitemapの作成（cronが使えない場合） - nak on the web system side](http://midpurple.jp/sys/19.html)

## ページソースのバックアップ

### Rubyによるスクレイピング

### Chrome (Console)

```javascript
// バックアップ対象ページの取得
$('#mw-content-text a').each(function(){
  console.log( $(this).text() + " ---- " + $(this).prop('href') );
});
```

### Ruby

```ruby
# coding: utf-8
require 'win32ole'

ie = WIN32OLE.new("InternetExplorer.Application")
ie.visible = true

hash = Hash::new
IO.foreach("targets.txt") do |line|
  title = line.split(" ---- ")[0]
  url   = line.split(" ---- ")[1]
  hash[title] = url
end
puts "targets.txt (count:#{hash.size})"

hash.each do |title, url|
  ie.navigate( url + "&action=edit" )
  while ie.busy == true; sleep 0.5; end
  textarea = ie.document.getElementsByTagName("textarea").item.innerText
  File.open( 'fout/' + title + '.txt', 'w' ).write( textarea.gsub( /\r/, "" ) )
end

puts "===EOF==="
```
