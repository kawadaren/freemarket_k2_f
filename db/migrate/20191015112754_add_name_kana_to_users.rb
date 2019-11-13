class AddNameKanaToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :name_kana, :string, null:false
  end
end
