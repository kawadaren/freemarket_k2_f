class User < ApplicationRecord
  has_many :buyed_items, foreign_key: "buyer_id", class_name: "Item" #買った商品
  has_many :selling_items, -> { where("buyer_id is NULL")}, foreign_key: "seller_id", class_name: "Item" #出品中
  has_many :sold_items, -> {where("buyer_id is not NULL")}, foreign_key: "seller_id", class_name: "Item" #売却済
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         has_many :items, dependent: :destroy
         has_many :goodstamps, dependent: :destroy
         has_many :statuses, dependent: :destroy
         belongs_to :news, optional: true
         belongs_to :report, optional: true
         has_one :creditcard, dependent: :destroy
         has_one :address, dependent: :destroy, inverse_of: :user
         accepts_nested_attributes_for :address
end
