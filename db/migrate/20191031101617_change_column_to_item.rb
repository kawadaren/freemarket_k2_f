class ChangeColumnToItem < ActiveRecord::Migration[5.0]
  def change
    change_column :items, :name, :string, null: true
    change_column :items, :price, :integer, null: true
  end

  

  
end
