class AddExplanationToItems < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :explanation, :text
  end
end
