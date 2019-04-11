class CreateUposts < ActiveRecord::Migration[5.2]
  def change
    create_table :uposts do |t|
      t.text :text
      t.integer :user_id
      t.timestamps
    end
  end
end
