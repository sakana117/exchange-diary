## diariesテーブル
| Column              | Type       | Options                        |
| --------------------| ---------- | ------------------------------ |
| diary_title         | string     | null: false                    |
| encrypted_password  | string     | null: false                    |
| concept             | string     |                                |
| group               | references | null: false, foreign_key:true  |

### Association
- has_one :group
- has_many :articles


## membersテーブル
| Column                      | Type       | Options                              |
| ----------------------------| ---------- | -------------------------------------|
| nickname                    | string     | null: false                          |
| member_pass                 | string     | null: false                          |
| color_id                    | integer    | null: false                          |
| icon_id                     | integer    | null: false                          |
| number_id                   | integer    | null: false                          |
| profile                     | text       |                                      |
| greet                       | string     |                                      |
| group                       | references | null: false, foreign_key:true        |
| ※image(ActiveStorage)       |            |                                      |

### Association
- belongs_to :group
- has_many :articles
- has_many :comments


## groupsテーブル
| Column              | Type       | Options                        |
| --------------------| ---------- | ------------------------------ |
| diary               | references | null: false, foreign_key:true  |
| member              | references | null: false, foreign_key:true  |

### Association
- has_one :diary
- has_many :member

## articlesテーブル
| Column                      | Type       | Options                        |
| ----------------------------| ---------- | ------------------------------ |
| article_title               | string     | null: false                    |
| main_text                   | text       | null: false                    |
| sub_text                    | text       | null: false                    |
| diary                       | references | null: false, foreign_key:true  |
| member                      | references | null: false, foreign_key:true  |
| ※image(ActiveStorage)       |            |                                |

### Association
- belongs_to :diary
- belongs_to :member
- has_many :comments

## commentsテーブル
| Column              | Type       | Options                        |
| --------------------| ---------- | ------------------------------ |
| comment             | text       | null: false                    |
| diary               | references | null: false, foreign_key:true  |
| member              | references | null: false, foreign_key:true  |

### Association
- belongs_to :diary
- belongs_to :member