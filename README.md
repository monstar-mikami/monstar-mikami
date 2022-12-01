# table-definitions-er-master
共通チームによるテーブル定義（ERMaster）およびDDLの管理用のリポジトリ




# 環境構築
ERMaster Install
https://rion.atlassian.net/wiki/spaces/SF/pages/947847338/ERMaster+install


# 各フォルダの説明
```
→NHFC
 →NHF(PostgreSQL).erm      NHF(SqlServer).ermをPostgresにとりあえず変換したものです。こちらを中心にメンテしていきます。
 →NHF(PostgreSQL).png      コミット前に確定したものを出力してください。
 →NHF(PostgreSQL).dll      コミット時に出力します。（現段階ではエラーが発生しているため未出力）

 →SQLServer
  →NHF_Original.sql 製造チームで作成されたDDLを取りまとめたもの （元のデータURL　https://drive.google.com/drive/u/0/folders/1Vskhn4EI24-WveqtJh6i-kd-hhWJ-ixY）
  →NHF(SqlServer).erm （ERMAsterで取り込んだそのままのデータ） 
```

## 作成LOG
SQLServer→PostgresSQL取り込みの手順については下記のチケットに残しました。
https://rion.atlassian.net/browse/SI-2306
