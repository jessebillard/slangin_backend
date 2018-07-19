class AddUserIdToSayings < ActiveRecord::Migration[5.2]
  def change
    add_column :sayings, :user_id, :integer
  end
end
