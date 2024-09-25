# Lecture12
## CircleCI のサンプルコンフィグが正しく動作するようにリポジトリに組み込む。
### 1. CircleCIのアカウント作成  
GitHubアカウントでの登録と初期設定をする  
[CirclCI公式サイト](https://circleci.com/docs/ja/first-steps)  
→GitHubに、circleci-project-setupブランチと .circleciとフォルダができる。  
参考にしたサイト  
[CircleCI 試してみた](https://qiita.com/sugurutakahashi12345/items/aeca12d9c5a5526c724c)

### 2. EC2からGitHubのリポジトリをcloneする 
cloneする準備  
SSHキーの生成と公開鍵をGitHubに登録する。
```bash
ssh-keygen -t rsa -b 4096 -C "email-address"
```

EC2からGitHubのリポジトリをcloneする 
```bash
git remote add origin git@github.com:taemimizukura/RaiseTech.git
```
### 3. config.ymlを書き換える
```bash
 vim /home/ec2-user/.circleci/config.yml
```
```yml
version: 2.1
orbs:
  python: circleci/python@2.0.3
jobs:
  cfn-lint:
    executor: python/default
    steps:
      - checkout
      - run: pip install cfn-lint
      - run:
          name: run cfn-lint
          command: |
            cfn-lint -i W3002 -t cloudformation/*.yml

workflows:
  raisetech:
    jobs:
      - cfn-lint
```
### 4. CircleCI CLI を使ったバリデーション
CircleCI CLIのインストール
```bash
curl -fLSs https://raw.githubusercontent.com/CircleCI-Public/circleci-cli/master/install.sh | sudo bash
```
comfig.ymlのバリデーション
![バリデーション](image/lecture12/img-01.png)

### 5. GitHubにpushして、CircleCIを確認
![CircleCIの確認](image/lecture12/img-02.png)

## 感想とメモ 
- 隠しフォルダは、名前の先頭にドット（.）が付いている。  通常のlsコマンドでは表示されないため、```ls -la```を使うと表示される。
- リポジトリにpushする前に、設定ファイル(comfig.yml)の内容が正しいかどうかをローカルでバリデーションすると効率的。
- バリデーション　構文エラーや有効性などを確認すること


