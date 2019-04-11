class UAlbum < ApplicationRecord
  has_many :uposts
  belongs_to :user
  has_one_attached :image
  has_many :timelines, as: :content,  dependent: :destroy

end
