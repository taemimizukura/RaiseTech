# Lecture06
1. CloudTrail のイベントについて
2. CloudWatch アラームを使ったメール通知
3. AWS 利用料の見積作成
4. 現在の利用料を確認

## 1. CloudTrail のイベントについて
![イベント](image/lecture06/img-01.png)
![イベントレコード](image/lecture06/img-02.png)
イベントレコード：ConsoleLogin   
userIdentity：ユーザーIDの種類　※ルートユーザでのログインだと "type":"Root",となる  
MFAIdentifier：Multi-Factor Authentication(多要素認証)に使用したデバイスの情報  
MFAUsed：ログインにMFA(多要素認証)を設定しているかどうか  
以上のことから、IAMユーザがMFAを利用してのログインに成功したことがわかる。
## 2. CloudWatch アラームを使ったメール通知
