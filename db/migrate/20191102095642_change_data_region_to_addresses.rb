class ChangeDataRegionToAddresses < ActiveRecord::Migration[5.0]
  def change
    change_column :addresses, :region, :integer
  end
end
