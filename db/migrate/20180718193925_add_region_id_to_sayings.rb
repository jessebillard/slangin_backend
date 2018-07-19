class AddRegionIdToSayings < ActiveRecord::Migration[5.2]
  def change
    add_column :sayings, :region_id, :integer
  end
end
