# freemarket DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false, unique: true|
|password|string|null: false, unique: true|
|name|string|null: false, unique: true|
|street-address|string|null: false|
|birthday|integer|null: false|
|payment|string|null: false|
|cregitcard|string|null: false, unique: true|
### Association
- has_many :items
- has_many :reviews
- has_many :messages
## index
- add index :users,  :name

## itemsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|price|integer|null: false|
|region|string|null: false|
|state|string|null: false|
|shippingdata|string|null: false|
|shippingmethod|string|null: false|
|shippingcharge|string|null: false|
|saler_id|reference|null: false, foreign_key: true|
|buyer_id|reference|null: false, foreign_key: true|
|user_id|reference|null: false, foreign_ket: true|
### Association
- has_many :tags,  through: :item-tags
- has_many :reviews
- belongs_to :user
- belongs_to :message

## index

## items-tagsテーブル（中間テーブル）
|Column|Type|Options|
|------|----|-------|
|item_id|reference|null: false, foreign_key: true|
|tag_id|reference|null: false, foreign_key: true|
### Association
- belongs_to :item
- belongs_to :tag

## tagsテーブル
|Column|Type|Options|
|------|----|-------|
|tag|text||
### Association
- has_many :items,  through: :item-tags

## reviewテーブル
|Column|Type|Options|
|------|----|-------|
|saler_id|reference|foreign_key: true|
|buyer_id|reference|foreign_key: true|
|user_id|reference|null: false, foreign_ket: true|
|text|string|null: false|
### Association
- belongs_to :item
- belongs_to :user

## messagesテーブル
|Column|Type|Options|
|------|----|-------|
|saler_id|reference|foreign_key: true|
|buyer_id|reference|foreign_key: true|
|user_id|reference|null: false, foreign_ket: true|
|body|text||
### Association
- belongs_to :item
- belongs_to :user
