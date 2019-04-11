class AddusderIdToGposts < ActiveRecord::Migration[5.2]
  def change
    add_column :gposts, :user_id, :integer
  end
end
