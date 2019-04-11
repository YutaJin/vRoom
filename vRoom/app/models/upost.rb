class Upost < ApplicationRecord
  after_create :create_timeline
  belongs_to :user
  has_one_attached :image
  belongs_to :u_album
  has_one :timeline, as: :content, dependent: :destroy
   def create_timeline
  self.timeline = Timeline.create(group_id: nil,g_album_id: nil, user_id: user_id, u_album_id: u_album_id, created_at: created_at)
 end
end
