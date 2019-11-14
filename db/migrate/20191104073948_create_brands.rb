class CreateBrands < ActiveRecord::Migration[5.0]
  def change
    create_table :brands do |t|
      t.string :name, null:false
      t.references :item, null: false, foreign_key: true

      t.timestamps
    end
  end
end
