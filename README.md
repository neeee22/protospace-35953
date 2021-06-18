#テーブル設計

## users テーブル

| Column     | Type   | Options     |
|-----------------------------------|
| email      | string | null: false |
| password   | string | null: false |
| name       | string | null: false |
| profile    | text   |             |
| occupation | text   |             |
| position   | text   |             |


### Association

- has_many :prototypes
- has_many :comments

## prototypes テーブル

| Column     | Type          | Options                        |
|-------------------------------------------------------------|
| title      | string        | null: false                    |
| catch_copy | text          |                                |
| concept    | text          |                                |
| image      | ActiveStorage |                                |
| user       | references    | null: false, foreign_key: true |

### Association

- has_many :comments
- belongs_to :user

## comments テーブル

| Column    | Type       | Options                        |
|---------------------------------------------------------|
| text      | text       |                                |
| user      | references | null: false, foreign_key: true |
| prototype | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :prototype
