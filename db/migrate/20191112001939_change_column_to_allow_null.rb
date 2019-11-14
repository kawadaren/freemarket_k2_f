class ChangeColumnToAllowNull < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :selling, :integer, null: true
    change_column :users, :profit, :integer, null: true
    change_column :users, :point, :integer, null: true
  end
end
