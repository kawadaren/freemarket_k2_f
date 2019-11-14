class Address < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  include JpPrefecture
  jp_prefecture :region

  belongs_to :user, inverse_of: :address

end
