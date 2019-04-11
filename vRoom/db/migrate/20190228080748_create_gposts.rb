class CreateGposts < ActiveRecord::Migration[5.2]
  def change
    create_table :gposts do |t|
      t.text :text
      t.integer :group_id
      t.timestamps
    end
  end
end
