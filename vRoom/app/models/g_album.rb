class GAlbum < ApplicationRecord
  has_many :gposts
  belongs_to :group
  has_one_attached :image
  has_many :timelines, as: :content, dependent: :destroy

end
