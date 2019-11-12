class User < ApplicationRecord
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
