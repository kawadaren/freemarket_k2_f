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

## items-categoriesテーブル（中間テーブル）
|Column|Type|Options|
|------|----|-------|
|item_id|reference|null: false, foreign_key: true|
|categorie_id|reference|null: false, foreign_key: true|
### Association
- belongs_to :item
- belongs_to :tag

## categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|tag|text||
### Association
- has_many :items,  through: :item-tags

## messagesテーブル
|Column|Type|Options|
|------|----|-------|
|saler_id|reference|foreign_key: true|
|buyer_id|reference|foreign_key: true|
|created_at|integer|null: false, foreign_ket: true|
|body|text||
### Association
- belongs_to :item
- belongs_to :user


## buyedテーブル（購入品）
|Column|Type|Options|
|------|----|-------|
|item_id|integer|null: false|
|buyer_id|integer|null: false|
|user_id|integer|null: false|
### Association
- has_many: items

## saledテーブル（出品品）
|Column|Type|Options|
|------|----|-------|
|saler_id|integer|null: false|
|user_id|integer|null: false|
|item_id|integer|null: false|

## regiontテーブル
