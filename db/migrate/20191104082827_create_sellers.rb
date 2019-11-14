class CreateSellers < ActiveRecord::Migration[5.0]
  def change
    create_table :sellers do |t|
      t.references :item, null: false, foreign_key: true
      # t.references :message, null: false, foreign_key: true

      t.timestamps
    end
  end
end
