class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.reference :user,  null: false, foreign_key: true
      t.string :postal,   null: false
      t.string :region,   null: false
      t.string :city,     null: false
      t.string :address,  null: false
      t.string :building, null: false
      t.timestamps
    end
  end
end
