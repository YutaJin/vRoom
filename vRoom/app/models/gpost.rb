class Gpost < ApplicationRecord
  after_create :create_timeline
 belongs_to :group
 belongs_to :user
 belongs_to :g_album
 has_one_attached :image
 has_one :timeline, as: :content, dependent: :destroy

 def create_timeline
  self.timeline = Timeline.create(group_id: group_id, g_album_id: g_album_id, user_id: user_id, u_album_id: nil, created_at: created_at)
 end
end


