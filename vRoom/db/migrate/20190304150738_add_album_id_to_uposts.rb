class AddAlbumIdToUposts < ActiveRecord::Migration[5.2]
  def change
    add_column :uposts, :u_album_id, :integer
  end
end
