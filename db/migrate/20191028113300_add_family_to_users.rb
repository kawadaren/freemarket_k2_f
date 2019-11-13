class AddFamilyToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :family, :string, null:false
  end
end
