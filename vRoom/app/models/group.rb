class Group < ApplicationRecord

  has_many :group_users
  has_many :users, through: :group_users
  has_many :gposts
  has_many :g_albums
  has_one_attached :image
  accepts_nested_attributes_for :group_users

   has_many :timelines, as: :content, dependent: :destroy

end
