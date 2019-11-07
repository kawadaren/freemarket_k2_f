class RemoveshippingDataIdFromItems < ActiveRecord::Migration[5.0]
  def change
    remove_column :items, :shipping_data_id, :integer
  end
end
