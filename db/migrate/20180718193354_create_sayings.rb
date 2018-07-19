class CreateSayings < ActiveRecord::Migration[5.2]
  def change
    create_table :sayings do |t|
      t.string :title
      t.string :description
      t.string :region

      t.timestamps
    end
  end
end
