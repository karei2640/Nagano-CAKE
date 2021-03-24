# README

# アプリケーション名

NAGANO CAKE(ケーキ屋のECサイト)

# アプリケーション概要

 ![logo3](https://user-images.githubusercontent.com/77328172/111861055-b03bc300-898e-11eb-9f1c-068e630febc6.png)
 ![a00de0a35cf2b3e251dab24b6aeff999](https://user-images.githubusercontent.com/77002979/112278349-10e83a00-8cc6-11eb-899c-a0a771db22b1.png)
 長野県にあるケーキ屋（製菓屋）のECサイトになります。

# テスト用アカウント

**管理者用**<br>
メールアドレス:admin@gmail.com<br>
パスワード:administrator<br>
管理者用ログインURL: /admin/sign_in

**顧客用**<br>
メールアドレス：test1@gmail.com<br>
パスワード:123456<br>

# 使用方法

```
$ git clone git@github.com:yoppari-club/nagano-cake.git
$ bundle install
$ rails db:seed
$ rails s
```

カートに追加から注文までは顧客用ログインが必要になります。

# 使用言語
- HTML & SCSS
- Ruby
- JavaScript
- フレームワーク
  - Ruby on Rails


# 機能一覧

<img width="530" alt="スクリーンショット 2021-03-24 17 44 59" src="https://user-images.githubusercontent.com/76772716/112280877-ccaa6900-8cc8-11eb-9924-2f7642368c26.png">


# gem一覧

| 機能 | 詳細 |
----  | ----
|devise| adminとcustomerログイン関連|
|refile| ファイルアップロードを行うためのライブラリ　|
|refile-mini_magick| 画像投稿|
|bootstrap| レイアウト |
|jquery-rails| jquery|
|font-awesome-sass| fontawesomeを使用 |
|pry-rails| コンソール変更・バグ修正 |
|kaminari|ページング |
|jp_prefecture| 住所自動反映|

# 動作環境
Rrails 5.2.4.5

# 開発者
- 柴田哲志
- 曽我真澄
- 山田雄貴
- 北谷凌

