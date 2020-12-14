# テーブル設計

## users テーブル

| Column                | Type     | Options     |
| ----------------------| -------- | ------------|
| nickname              | string   | null: false |
| email                 | string   | null: false |
| encrypted_password    | string   | null: false |
| first_name            | string   | null: false |
| last_name             | string   | null: false |
| first_name_kana       | string   | null: false |
| last_name_kana        | string   | null: false |

### Association

- has_many :tweets
- has_many :comments
- has_many :contacts

## tweets テーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| name        | references | null: false, foreign_key: true |     
| title       | string     | null: false                    |
| image       | string     | null: false                    |
| text        | string     | null: false                    |

### Association

- belongs_to :user
- has_many :comments

## comments テーブル

| Column    | Type       | Options                        |
| --------- | ---------- | ------------------------------ |
| text      | string     | null: false                    |
| user_id   | references | null: false, foreign_key: true |
| tweet_id  | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :tweet

##問合せフォーム

| Column                 | Type       | Options      |
| -----------------------| ---------- | ------------ |
| country                | string     | null: false  |
| fullname               | string     | null: false  |
| mail                   | string     | null: false  |
| tel                    | string     | null: false  |
| budget                 | string     | null: false  |
| shooting_start_at_date | string     | null: false  |
| shooting_time_duration | string     | null: false  |
| comment                | text       | null: false  |





# テーブル設計

## (users) テーブル
## travelersテーブル

| Column                | Type     | Options     |
| ----------------------| -------- | ------------|
| name                  | string   | null: false |
| name_kana             | string   | null: false |
| email                 | string   | null: false |
| encrypted_password    | string   | null: false |

## photographers テーブル

| Column                | Type     | Options     |
| ----------------------| -------- | ------------|
| name                  | string   | null: false |
| name_kana             | string   | null: false |
| email                 | string   | null: false |
| country               | string   | null: false |
| language              | string   | null: false |
| taste                 | string   | null: false |
| encrypted_password    | string   | null: false |



## contacts テーブル

| Column                 | Type       | Options      |
| -----------------------| ---------- | ------------ |
| country                | string     | null: false  |
| fullname               | string     | null: false  |
| mail                   | string     | null: false  |
| tel                    | string     | null: false  |
| budget                 | string     | null: false  |
| shooting_start_at_date | string     | null: false  |
| shooting_time_duration | string     | null: false  |
| comment                | text       | null: false  |

- belongs_to :user