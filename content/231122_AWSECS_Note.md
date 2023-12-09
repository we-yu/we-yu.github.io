Title: Udemy AWS ECS Note
Date: 2023-11-21 12:20
Category: Review

- 作成したリポジトリにイメージをプッシュする際のログイン時に以下のエラーが表示される。
```
$ aws ecr get-login-password --region ap-southeast-1 | docker login --username AWS --password-stdin hogehoge.dkr.ecr.ap-southeast-1.amazonaws.com
```
```
An error occurred (UnrecognizedClientException) when calling the GetAuthorizationToken operation: The security token included in the request is invalid.
Error: Cannot perform an interactive login from a non TTY device
```
- 結論から言うとアクセスキーの(再)作成が必要。
- ユーザの新規作成ないし既存ユーザの詳細ページの「セキュリティ認証情報」タブから「アクセスキーの作成」を実行する。
```
$ aws configure
```
- を実行し、作成したアクセスキー・シークレットアクセスキーを入力すると成功する。かもしれない。

