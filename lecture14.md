# 第14回　第13回で自動化処理したAWS構成図を作成する
## CicrcleCI自動化処理構成図  
[circleci_lecture13](https://github.com/taemimizukura/circleci_lecture13)　自動化を実行したリポジトリ  
[lecture13.md](https://github.com/taemimizukura/RaiseTech/blob/main/lecture13.md)　作業概要と実行結果のまとめ  

コントロールノード、ターゲットノードともにAmazon Linux2をOSとするEC2インスタンスを使用しています。  
SSH接続したコントロールノードからGitHubへpushすることで以下の処理が自動実行されます。
- CloudFormationスタックの構文チェック（cfn-lint）  
- CloudFormationでのリソース作成（execute-cloudformation）  
- AnsibleによるEC2へのRailsアプリケーションの動作環境構築（execute-ansible）  
- ServerspecによるEC2環境のテスト（execute-serverspec）  

![構成図](image/lecture14/img-01_.drawio.png)

## 感想
構成図に起こすことで自分の作業内容の理解が深まりました。
drawioで構成図を作成する際、編集がしずらく苦労していましたが、こちらの記事を参考にレイヤー機能を使って作成したところ格段に作業しやすくなりました。  
[draw.ioでレイヤーを使ったらAWS構成図が捗ったお話](https://tech.anti-pattern.co.jp/drawio-de-layer/)
