class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         has_many :items, dependent: :destroy
         has_many :goodstamps, dependent: :destroy
         has_many :statuses, dependent: :destroy
         belongs_to :news
         belongs_to :report
         has_one :creditcard, dependent: :destroy
         has_one :address, dependent: :destroy
end
