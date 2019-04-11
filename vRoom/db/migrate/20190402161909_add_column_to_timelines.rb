class AddColumnToTimelines < ActiveRecord::Migration[5.2]
  def change
    add_column :timelines, :content_type, :string
    add_column :timelines, :content_id, :integer
  end
end
