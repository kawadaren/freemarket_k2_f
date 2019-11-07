class RemoveSellerToItem < ActiveRecord::Migration[5.0]
  def change
    remove_column :items, :seller, :string
  end
end
