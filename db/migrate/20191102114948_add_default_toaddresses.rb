class AddDefaultToaddresses < ActiveRecord::Migration[5.0]
  def change
    change_column_null :addresses, :family, false
    change_column_null :addresses, :name, false
    change_column_null :addresses, :family_kana, false
    change_column_null :addresses, :name_kana, false
  end
end
