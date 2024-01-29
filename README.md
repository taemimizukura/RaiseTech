# Git の初期設定〜GitHub へのプルリクエスト（PR）まで
1. `git clone https://???` GitHubからサンプルアプリケーションをcloneする
2. `cd ???`　ディレクトリを移動する
3. `git checkout -b git-lecture`　　git-lectureというブランチを作り、そこに切り替える
4. `touch git-lecture.md` git-lecture.mdというファイル作成　編集　保存
5. `git add git-lecture.md` 
<br>すべてのファイルをステージングする場合は、以下のコマンドでもOK
   `git add .`
6. `git commit -m "add git-lecture.md"` コメントをつけてcommitする
7. `git push origin git-lecture` GitHubへpushする
<br>usernameを入力
<br>passwordを入力

