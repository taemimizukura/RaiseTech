# GitHubのコマンド
- リポジトリのクローン（コピー）  
`git clone <リポジトリURL>`　　
-  新しいブランチの作成  
`git branch <新しいブランチ名>`
- ブランチの切り替え  
`git checkout <ブランチ名>`
- 新しいブランチを作成して切り替え  
`git checkout -b <新しいブランチ名>`  
- 変更をステージに追加  
`git add <ファイル名>`
- 変更をコミット  
`git commit -m "コミットメッセージ"`
- 変更をリモートリポジトリにプッシュ  
`git push origin <ブランチ名>`
- リモートリポジトリから変更をプル  
`git pull origin <ブランチ名>`
- リモートリポジトリから最新の変更をローカルに取得する  
`git fetch origin`
- 変更をマージ  
`git merge <ブランチ名>`
- 変更を元に戻す（リセット）  
`git reset <ファイル名>`
- 変更を破棄して最後のコミットに戻す  
`git reset --hard HEAD`
- リモートリポジトリのURLを追加  
`git remote add origin <リモートリポジトリURL>`
- リモートリポジトリの情報を表示  
`git remote -v`
- ブランチの削除  
`git branch -d <ブランチ名>`
- タグの作成  
`git tag -a <タグ名> -m "タグメッセージ"`
- タグをリモートリポジトリにプッシュ  
 `git push origin --tags`
- 差分を表示  
`git diff`
- コミット履歴の表示  
`git log`
- ファイル削除  
`git rm ファイル名`
- ディレクトリ(フォルダ)削除  
`git rm -r ディレクトリ名`

