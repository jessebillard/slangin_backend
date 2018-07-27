class CreateSayingTags < ActiveRecord::Migration[5.2]
  def change
    create_table :saying_tags do |t|
      t.integer :saying_id
      t.integer :tag_id

      t.timestamps
    end
  end
end
