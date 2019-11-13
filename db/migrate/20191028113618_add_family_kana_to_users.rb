class AddFamilyKanaToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :family_kana, :string, null:false
  end
end
