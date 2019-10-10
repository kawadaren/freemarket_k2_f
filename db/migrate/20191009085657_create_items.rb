class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.integer :price, null: false
      t.references :category, null: false
      t.references :state, null: false
      t.references :size, null: false
      t.references :bland, null: false
      t.references :report, null: false
      t.references :region, null: false
      t.references :shipping_data, null: false
      t.references :shipping_method, null: false
      t.references :shipping_charge, null: false
      t.datetime   :created_at
      t.timestamps
    end
  end
end

