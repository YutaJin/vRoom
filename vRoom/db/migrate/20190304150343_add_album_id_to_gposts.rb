class AddAlbumIdToGposts < ActiveRecord::Migration[5.2]
  def change
    add_column :gposts, :g_album_id, :integer
  end
end
