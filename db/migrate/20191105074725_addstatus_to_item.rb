class AddstatusToItem < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :status_id, :integer
  end
end
