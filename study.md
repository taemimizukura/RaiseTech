- リポジトリのクローン（コピー）
<br>git clone <リポジトリURL>
-  新しいブランチの作成
<br>git branch <新しいブランチ名>
- ブランチの切り替え
<br>git checkout <ブランチ名>
- 新しいブランチを作成して切り替え
<br>git checkout -b <新しいブランチ名>
- 変更をステージに追加
<br> git add <ファイル名>
- 変更をコミット
<br>- git commit -m "コミットメッセージ"
- 変更をリモートリポジトリにプッシュ
<br>git push origin <ブランチ名>
- リモートリポジトリから変更をプル
<br>git pull origin <ブランチ名>
- 変更をマージ
<br>git merge <ブランチ名>
- 変更を元に戻す（リセット）
<br>git reset <ファイル名>
- 変更を破棄して最後のコミットに戻す
<br>git reset --hard HEAD
- リモートリポジトリのURLを追加
<br>git remote add origin <リモートリポジトリURL>-
- リモートリポジトリの情報を表示
<br>git remote -v
- ブランチの削除
<br>git branch -d <ブランチ名>
- タグの作成
<br>git tag -a <タグ名> -m "タグメッセージ"
- タグをリモートリポジトリにプッシュ
<br>git push origin --tags
- 差分を表示
<br>git diff
- コミット履歴の表示
<br>git log
