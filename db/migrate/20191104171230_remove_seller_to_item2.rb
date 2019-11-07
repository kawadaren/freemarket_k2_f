class RemoveSellerToItem2 < ActiveRecord::Migration[5.0]
  def change
    remove_column :items, :seller_id, :string
  end
end
