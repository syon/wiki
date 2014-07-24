
## 環境変数

### SQL*Plus

```sql
set head off      -- テーブルヘッダ非表示
set pagesize 0    -- カラム名なし
set lin 300       -- コンソール横幅
set verify off    -- 置換旧新非表示
set feedback off  -- 1行が作成〜
set define off    -- 置換変数'&'無効
```

### コマンドプロンプト

```sql
set NLS_LANG=Japanese_Japan.JA16SJIS  -- 文字化け対応
```

## 調査

### スキーマ一覧

```sql
select username from dba_users;
```

### テーブルの存在確認

```sql
select table_name from user_tables where table_name like 'TBL%';
```

### ファイル出力

```sql
spool log.txt
spool off
```

### コマンドプロントのコマンド実行

```sql
SQL> host dir
```

### 件数制限

```sql
where ROWNUM = 1
```

### パスワード期限切れ(ORA-28001)

ORA-28001:パスワードが期限切れです。

```sql
alter user USR identified by PWD;
alter user USR account unlock;
```

### パスワード期限切れ予告(ORA-28002)

ORA-28002: パスワードは、n日以内に期限切れになります。

```sql
-- デフォルトプロファイルのパスワード有効期限を無期限に設定
alter profile default limit password_life_time unlimited;
```

## UTL_FILE_DIR

設定変更

```sql
alter system set UTL_FILE_DIR='*'
```

設定確認

```sql
select name, value from V$PARAMETER2 where name='utl_file_dir';
```

権限付与

```sql
grant execute on utl_file to USERNAME;
```

## ディレクトリオブジェクト

存在確認  ※SYSTEMユーザで実行

```sql
select * from DBA_DIRECTORIES;
```

作成

```sql
create directory NAMEOF_DATAPUMP_DIR as 'C:¥datapump';
```

権限付与

```sql
grant read, write on directory NAMEOF_DATAPUMP_DIR to USERNAME;
```

権限付与されているもの一覧  ※確認したいユーザで実行

```sql
select * from ALL_DIRECTORIES;
```

## テーブル定義情報取得SQL

```sql
SELECT
   B.TABLE_TYPE  AS "種別"
  ,C.TABLE_NAME  AS "テーブル名"
  ,B.COMMENTS    AS "テーブルコメント"
  ,U.COMMENTS    AS "カラムコメント"
  ,C.COLUMN_NAME AS "カラム名"
  ,C.DATA_TYPE   AS "データ型"
  ,CASE
     WHEN C.DATA_TYPE = 'NUMBER' THEN '' || C.DATA_PRECISION || ',' || C.DATA_SCALE || ''
     WHEN C.CHAR_USED = 'C'      THEN '' || C.CHAR_LENGTH    || ''
     WHEN C.CHAR_USED = 'B'      THEN '' || C.CHAR_LENGTH    || ''
     ELSE NULL
   END AS "桁数"
  ,DECODE(P.POSITION, NULL, NULL, 'PK') AS "PK"
  ,DECODE(C.NULLABLE,'N','Yes',NULL) AS "NOTNULL"
--  ,T.TABLESPACE_NAME
FROM
  USER_TAB_COLUMNS C
  LEFT OUTER JOIN USER_TABLES T
    ON (C.TABLE_NAME = T.TABLE_NAME) 
  LEFT OUTER JOIN USER_COL_COMMENTS U
    ON (U.TABLE_NAME=C.TABLE_NAME AND U.COLUMN_NAME = C.COLUMN_NAME)
  LEFT OUTER JOIN USER_TAB_COMMENTS B
    ON (B.TABLE_NAME=C.TABLE_NAME)
  LEFT OUTER JOIN USER_CONS_COLUMNS P
    ON (P.TABLE_NAME=C.TABLE_NAME AND P.COLUMN_NAME = C.COLUMN_NAME AND P.POSITION IS NOT NULL)
WHERE
  C.TABLE_NAME not like 'SYS_EXPORT_SCHEMA%'
--  AND C.TABLE_NAME like :tbl_nm
ORDER BY
    B.TABLE_TYPE
  , C.TABLE_NAME
  , C.COLUMN_ID
/
```