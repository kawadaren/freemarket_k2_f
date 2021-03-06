# freemarket DB設計

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unique: true|
|password|string|null: false, unique: true|
|email|string|null: false, unique: true|
|phone_number|string|null: false, unique: true|
|birthday|integer|null: false|
|created_at|datetime||
|updated_at|datetime||
|image|string||
|payment|string||
|selling|integer|null: false|
|profit|integer|null: false|
|point|integer|null: false|
|nickname|string|null: false|
|name_kana|string|null: false|

### Association
- has_many :items, dependent: :destroy
- has_many :goodstamps, dependent: :destroy
- has_many :statuses, dependent: :destroy
- belongs_to :news
- belongs_to :report
- has_one :creditcard, dependent: :destroy
- has_one :address, dependent: :destroy

---

## addressテーブル
|Column|Type|Options|
|------|----|-------|
|user|reference|null: false, foreign_key: true|
|postal|string|null: false|
|region|string|null: false|
|city|string|null: false|
|address|string|null: false|
|building|string||

### Association
- belongs_to: user

---

## itemsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|price|integer|null: false|
|category|reference|null: false|
|state|reference|null: false|
|size|reference|null: false|
|brand|reference|null: false|
|report|reference|null: false|
|region|reference|null: false|
|shipping_data|reference|null: false|
|shipping_method|reference|null: false|
|shipping_charge|reference|null: false|
|saller|reference|null: false, foreign_key: true|
|buyer|reference|null: false, foreign_key: true|
|created_at|datatime||

### Association
- has_many :goodstamps, dependent: :destroy
- has_many :images, dependent: :destroy
- belongs_to :user
- belongs_to :report
- belongs_to :brand
- belongs_to :region
- belongs_to :category
- belongs_to :buyer, class_name: "User"
- belongs_to :seller, class_name: "User"
- belongs_to_active_hash :shipping_method
- belongs_to_active_hash :shipping_data
- belongs_to_active_hash :state
- belongs_to_active_hash :size

---
## categoryテーブル
|Column|Type|Options|
|------|----|-------|
|name|String|null: false, ancestry|

### Association
- has_many :items

---
## buyerテーブル
|Column|Type|Options|
|------|----|-------|
|item|reference|null: false|
|message|reference|null: false|

### Association
- has_many :items, class_name: "User"
- has_many :messages
- has_many :evaluations
- has_one :seller


---
## sellerテーブル
|Column|Type|Options|
|------|----|-------|
|item|reference|null: false|
|message|reference|null: false|

### Association
- has_many :items, class_name: "User"
- has_many :messages
- has_many :evaluations
- has_one :seller

---
## messageテーブル
|Column|Type|Options|
|------|----|-------|
|text|text||
|buyer|reference|null: false|
|seller|reference|null: false|
|created_at|datatime||

### Association
- belongs_to :buyer
- belongs_to :seller

---
## evaluationテーブル
|Column|Type|Options|
|------|----|-------|
|text|text||
|buyer|reference|null: false|
|seller|reference|null: false|
|status|reference|null: false, foreign_key: true|

### Association
- belongs_to :buyer
- belongs_to :seller
- belongs_to :status

---
## statusテーブル
|Column|Type|Options|
|------|----|-------|
|evaluation|reference|null: false|
|user|reference|null: false, foreign_key: true|

### Association
- has_many :evaluations
- belongs_to :user

---
## reportテーブル
|Column|Type|Options|
|------|----|-------|
|user|reference|null: false, foreign_key: true|
|item|reference|null: false, foreign_key: true|

### Association
- has_many :users
- has_one :items

---
## likesテーブル
|Column|Type|Options|
|------|----|-------|
|user|reference|null: false, foreign_key: true|
|item|reference|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :item

---
## newsテーブル
|Column|Type|Options|
|------|----|-------|
|notice|text||
|user|references|null: false|
|created_at|datatime||

### Association
- has_many :users, dependent: :destroy

---
## creditcardテーブル
|Column|Type|Options|
|------|----|-------|
|customer_id|string|null: false|
|card_id|string|null: false|
|user|reference|null: false, foreign_key: true|

### Association
- belongs_to :user

---
## imageテーブル
|Column|Type|Options|
|------|----|-------|
|url|string|null: false|
|item|reference|null: false, foreign_key: true|

### Association
- belongs_to :item

---
## brandテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|item|reference|null: false, foreign_key: true|

### Association
- has_many :items

---
## regionテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|item|reference|null: false, foreign_key: true|

### Association
- has_many :items


