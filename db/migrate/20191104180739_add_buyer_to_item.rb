class AddBuyerToItem < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :buyer_id, :integer
    add_column :items, :seller_id, :integer
  end
end
