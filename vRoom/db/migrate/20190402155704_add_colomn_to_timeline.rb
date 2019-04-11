class AddColomnToTimeline < ActiveRecord::Migration[5.2]
  def change
    add_column :timelines, :user_id, :integer
    add_column :timelines, :u_album_id, :integer
    add_column :timelines, :group_id, :integer
    add_column :timelines, :g_album_id, :integer
  end
end
