class ChangeDatatypeBirthdayOfUsers < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :birthday, :datetime
  end
end
