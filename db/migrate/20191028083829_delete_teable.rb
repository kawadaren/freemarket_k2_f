class DeleteTeable < ActiveRecord::Migration[5.0]
  def change
    drop_table :regions
  end
end
