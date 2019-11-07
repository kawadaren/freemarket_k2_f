class AddNameToCategory < ActiveRecord::Migration[5.0]
  def change
    add_column :categories, :name, :string, null: false
  end
end
