class ChangeDatatypeShippingDataOfItems < ActiveRecord::Migration[5.0]
  def change
    change_column :items, :shipping_data_id, :integer
  end
end
