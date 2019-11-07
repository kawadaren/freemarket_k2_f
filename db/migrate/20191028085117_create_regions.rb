class CreateRegions < ActiveRecord::Migration[5.0]
  def change
    create_table :regions do |t|
      t.integer :prefecture_id
      t.string :city

      t.timestamps
    end
  end
end
