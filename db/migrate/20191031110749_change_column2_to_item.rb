class ChangeColumn2ToItem < ActiveRecord::Migration[5.0]
  def change
    change_column :items, :category_id, :integer, null: true
    change_column :items, :state_id, :integer, null: true
    change_column :items, :size_id, :integer, null: true
    change_column :items, :bland_id, :integer, null: true 
    change_column :items, :report_id, :integer, null: true  
    change_column :items, :region_id, :integer, null: true
    change_column :items, :shipping_data_id, :integer, null: true
    change_column :items, :shipping_method_id, :integer, null: true
    change_column :items, :shipping_charge_id, :integer, null: true
  end
end
