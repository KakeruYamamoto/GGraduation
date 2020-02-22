# README


# EVENT KEEPER
### AWS:http://18.182.182.144
### Heroku:https://mighty-harbor-57988.herokuapp.com
##### ＊GoogleログインはHerokuのみ（AWSはドメイン未取得のため）


## 概要
シンプルにタイトルと記事内容を投稿することに特化したイベント管理運営サービス

## コンセプト
掲示板にポスターを貼るように、簡単にイベントを作成と告知できる。
デザインをできる限りシンプルにして、情報量を減らす事でユーザーが選択しやすい設計に仕上げた。

## バージョン
- Ruby 2.6.5
- Rails 5.2.4

## 機能一覧
- [ ] イベント機能
  - [ ] イベントCRUD機能（一覧、作成、詳細、更新、削除）
  - [ ] イベント参加者の表示
  - [ ] 確認画面機能（新規投稿のみ）
  - [ ] 主催イベントの一覧表示（各プロフィールにて）
  - [ ] イベント終了表示機能（期限になるとコンテンツ部分に表示）

  - [ ] イベント参加機能（一覧、追加、削除）
    - [ ] 参加イベントの一覧表示機能
    - [ ] 参加イベントの編集機能（追加、削除）
    - [ ] イベント中止機能（主催するイベントのキャンセル）
      - [ ] 主催者がイベントをキャンセルする（主催者のみの操作）

  - [ ] イベントの’あとで見る’機能（一覧、追加、削除）
    - [ ] あとで見る機能の一覧表示機能
    - [ ] あとで見るリストの編集機能（追加、削除）

- [ ] ユーザ機能
  - [ ] ユーザ機能（作成、詳細、更新）

- [ ] フォロー機能とフォロワー機能
  - [ ] フォローとフォロワー機能（一覧表示、追加、削除）

- [ ] お問い合わせ機能（一般ユーザがイベント主催者へ）
  - [ ] お問い合わせ受信box機能（一覧表示、詳細）

- [ ] ユーザ管理機能（RailsAdmin）
  - [ ] ユーザのCURD機能（作成、詳細、更新、削除）
  - [ ] ユーザ削除機能
    - [ ] ユーザの編集と削除は作成したユーザと管理者のみ実行可能

- [ ] メール通知機能(現在、ローカルのみ作動)
  - [ ] イベント主催者へのお問い合わせ通知メール（主催者へ）
  - [ ] イベントの詳細変更の通知メール（参加者へ）
  - [ ] イベントの中止の通知メール（参加者へ）

- [ ] ラベル機能
- [ ] 簡易版ゲストログイン機能
- [ ] イベント検索機能(Gem:Runsack)
- [ ] 画像アップロード機能(Gem:carrierwave)
- [ ] ページネーション機能(Gem:Kaminari)
- [ ] ログイン機能（Gem:Devise）



## カタログ設計
詳細は[こちら](https://docs.google.com/spreadsheets/d/1jzKGT_3a9xmagpc9RAHunR8BEhg3C-Pu0EhWB_1oJiw/edit?usp=sharing)をご覧ください。

## テーブル定義
詳細は[こちら](https://docs.google.com/spreadsheets/d/1ZxAl-qePMVRVjMSjJvvdCAtxFa8Lr9Chx3hgXIj9r2s/edit?usp=sharing)をご覧ください。

## ER図
詳細は[こちら](https://raw.githubusercontent.com/KakeruYamamoto/graduation/master/erd.png)をご覧ください。

## 画面遷移図
詳細は[こちら](https://cacoo.com/diagrams/y5Szk1GeOvPKQRcD/9E3BF)をご覧ください。

## 画面ワイヤーフレーム
詳細は[こちら](https://cacoo.com/diagrams/51O1AnZuSgtrGNYT/B6EB3)をご覧ください。

# 使用技術
- ログイン機能
  - devise
  - omniauth
  - omniauth-google-oauth2
- 管理者機能
  - rails_admin
- 権限管理
  - cancancan
- 画像編集機能
  - carrierwave
  <!-- - mini_magick -->
- 検索機能
  - ransack
- ページネーション
  - kamminari
- デバッグ
  - better_errors
  - binding_of_caller
  - pry-rails
- テスト
  - rspec-rails
  - spring
  - spring-commands-rspec
  - factory_bot_rails
  - capybara
  - selenium-webdriver
  - database_cleaner
  - launchy
  - faker
  - gimei
- デザイン
  - bootstrap
  - kaminari-bootstrap
  <!-- - Font Awesome -->
<!-- - 辞書機能
  - i18n -->
- メール機能
  - SendGrid
  - letter_opener_web(ローカル環境)
- マップ機能
  - GoogleMap(<=<=予定)

## How to Start
```
  1.  git clone https://github.com/KakeruYamamoto/graduation.git
  2.  rails db:create
  3.  rails db:migrate
  4.  config/initializers/locale.rb内の"I18n"の二行をコメントアウト（seed生成後戻す）
  5.  rails db:seed
  6.  yarn install
  7.  bundle exec rspec    
  8.  rails s  
```
