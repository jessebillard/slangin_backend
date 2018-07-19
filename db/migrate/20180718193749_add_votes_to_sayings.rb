class AddVotesToSayings < ActiveRecord::Migration[5.2]
  def change
    add_column :sayings, :votes, :integer
  end
end
