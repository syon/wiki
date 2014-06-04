
## TIPS

#### テーマの変更

管理 > 設定 > 表示タブ > テーマ

#### ロードマップを表示するには

バージョンの作成が必要。
対象プロジェクト > 設定 > バージョン > （＋）新しいバージョン


## インストール

### [ALMinium](https://github.com/alminium/alminium)

Redmineを利用してALMを実現するためのツール

### [Bitnami Redmine](http://bitnami.com/stack/redmine)

Bitnami Redmine Stack provides a one-click install solution for Redmine.

## プラグイン

### [zh/redmine_importer](https://github.com/zh/redmine_importer)

- [Redmine Importer Documentation](https://github.com/leovitch/redmine_importer/wiki)

### [XLS Export - Plugins - Redmine](http://www.redmine.org/plugins/redmine_xls_export)

### [Hide Sidebar - Plugins - Redmine](http://www.redmine.org/plugins/sidebar_hide)

## バックアップ・リカバリ

- [データのバックアップ方法 — Redmine.JP](http://redmine.jp/faq/system_management/backup/)

### 物理ファイルのバックアップ・リカバリ

- C:\BitNami\redmine-2.4.2-0\apps\redmine\htdocs\files
- C:\BitNami\redmine-2.4.2-0\apps\redmine\htdocs\public\themes

### データベースのバックアップ・リカバリ

- mysqldump -u MySQLユーザー名 -pMySQLパスワード Redmineデータベース名 > データ出力先ファイル名  
  データーベースbitnami_redmineの認証情報は redmine\htdocs\config\database.yml を参照
<pre>
cd C:\BitNami\redmine-2.4.2-0\mysql\bin
mysqldump -u bitnami -pPASUWAADO bitnami_redmine > C:\BitNami\redmine_data_20140130
</pre>

- mysql -u MySQLユーザー名 -pMySQLパスワード Redmineデータベース名 < ダンプデータファイル名
<pre>
cd C:\BitNami\redmine-2.4.2-0\mysql\bin
mysql -u bitnami -pPASUWAADO bitnami_redmine < C:\BitNami\redmine_data_20140130
</pre>

## アップグレード

- [BitNami :: Redmine](http://bitnami.com/stack/redmine)
- [アップグレード — Redmine Guide 日本語訳](http://redmine.jp/guide/RedmineUpgrade/)  
  ※公式ページに記載の rake コマンドは bundle exec rake ～ の形式で記述しないと動作しなかった
- [BitNami::Redmine win をアップグレード(2) ≪ Fukui Labs](http://blog.progfast.jp/labs/index.php/arts/bitnamiredmine-upgrade-2/)

<pre>
rem htdocsにRakefileがある
cd C:\BitNami\redmine-2.4.2-0\apps\redmine\htdocs
set Path=%Path%;C:\BitNami\redmine-2.4.2-0\ruby\bin
set Path=%Path%;C:\BitNami\redmine-2.4.2-0\imagemagick
bundle exec rake redmine:plugins:migrate RAILS_ENV=production
bundle exec rake tmp:cache:clear
bundle exec rake tmp:sessions:clear
</pre>
→ 「redmine manager tool」を使って再起動

## Links

- [Redmine2.4.1に設定したもの - azuriteのブログ](http://azurite.hatenablog.jp/entry/2013/12/13/Redmine2.4.1%E3%81%AB%E8%A8%AD%E5%AE%9A%E3%81%97%E3%81%9F%E3%82%82%E3%81%AE)
- [Excel から Redmine の情報を取得する方法 - 地平線に行く](http://d.hatena.ne.jp/chiheisen/20130421/1366543773)
