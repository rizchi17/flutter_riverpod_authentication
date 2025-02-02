# flutter_riverpod_authentication
## 概要
- Firebase Auth x Riverpod StreamProviderの状態管理を試す

## 機能
- 常に何かしらの認証状態を持ち、画面に表示する
- ボタンをタップすることで認証状態を変更する

## Stream とは
データが変化するのを監視して、変化があったら反映させる

## Riverpod での Stream(StreamProvider)
例えばログイン状態を管理するとき、
`FirebaseAuthentication`の`authStateChanges()`と組み合わせることで、
`FirebaseAuth.instance.signOut()`などのログイン状態を変更する動きをキャッチして状態を変更させる。
これにより、ロジック側でログイン・ログアウト操作をするだけでproviderの状態が変更される。
ログイン状況によってUIを用意していれば、状態が変わった時にUIも切り替わる。

## メモ
### riverpod_generator
`flutter pub run build_runner build --delete-conflicting-outputs`

### 環境変数について
CLIENT_ID,REVERSED_CLIENT_IDは環境変数にしたいけど今回は省略
Info.plistを書き換えてしまうとGitに反映されてしまうので書き換えずに内部的に値を持つようにしたい
