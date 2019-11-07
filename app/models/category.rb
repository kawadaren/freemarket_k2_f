class Category < ApplicationRecord
  has_many :items, optional: true
  has_ancestry

end
