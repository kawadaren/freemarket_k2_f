class AddtelNumberaddresses < ActiveRecord::Migration[5.0]
  def change
    add_column :addresses, :tel_number, :string
  end
end
