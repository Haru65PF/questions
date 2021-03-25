# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# アプリケーション名 
The Questions

# アプリケーション概要 
あらゆる分野、日常生活で浮かんだ疑問や問題に対して、それぞれ個人が自由に回答できるアプリです。

# 利用方法 
- 新規にアカウントを作成（ニックネーム、email、パスワード、年代を設定します）。
- ログインしたら投稿ボタンから問題の投稿、表示されている問題をクリックするとその問題の回答画面に移ります。
- 回答投稿画面では回答ボタンから回答することができます。

# 目指した課題解決 
発想力を鍛えたいと思う人、普段の会議などで自分の意見を言えるようになりたい人を対象としています 
当たり前のことや勉強していることに関して疑問を持ち、それに対して何かしらの答えを出しながら発想力を鍛えます


# 要件定義
| 優先度 | 機能 | 目的 | 詳細 | ストーリー | 見積もり |
| ３ | ユーザー登録機能 | ユーザー情報登録のため |deviseを利用した登録機能の実装 | Twitterのように不特定多数の利用を見込むため登録方法はニックネーム、email、パスワード、年代とします | ５ |
| ３ | 問題投稿機能 | メインの機能、ユーザーが自身の考えた問題を投稿するため | チャット投稿の感覚で問題の内容を投稿できます | 問題の大まかな内容がわかるようにジャンルを選択できるようにします | ８ |
| ３ | 回答投稿機能 | 問題に対して多数の人が自由に回答できる機能 | チャットに対するコメントのような形で回答する | 問題に対してコメントする形で回答、回答の内容は新しい順に表示されます | ８ |
| ２ | 反論機能 | コメントに対する反論を投稿 | コメントに対するコメントが可能 | 問題に対する回答に反論したいときに使用できます、反論は常時表示せず表示したい時のみ表示ボタンから表示できるようにします | ８ |
| １ | いいね機能 | 回答に対していいねをスタンプできる機能 | 回答に対して不特定多数の人がいいねを押すことが可能 | 10 |
| １ | 問題検索機能 |	問題の種類を検索できる機能 | 問題に指定したジャンルから検索できるようにする | １０ |


# データベース設計

## Users テーブル
| Column   | Type    | Option     |  |
|          |         |            |  |
| nickname | String  | null:false |  |
| email    | String  | null:false |  |
| password | String  | null:false |  |
| age_id   | integer | null:false |  |

### Association
has_many :questions
has_many :comments

## Questions テーブル
| Column   | Type    | Option     |
|          |         |            |
| question | String  | null:false |
| junle_id | Integer | null:false |

### Association
belongs_to :user
has_many :comments

## Comments テーブル
| Column      | Type    | Option     |
|             |         |            |
| user_id     | Integer | references |
| question_id | Integer | references |
| comment     | text    | null:false |

### Association
belongs_to :question
belongs_to :user