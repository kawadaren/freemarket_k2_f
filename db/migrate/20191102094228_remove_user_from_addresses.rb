class RemoveUserFromAddresses < ActiveRecord::Migration[5.0]
  def change
    remove_reference :addresses, :user, foreign_key: true
  end
end
