class RemoveBuyerToItem < ActiveRecord::Migration[5.0]
  def change
    remove_column :items, :buyer_id, :string
  end
end
