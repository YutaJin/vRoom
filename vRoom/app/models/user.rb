class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,:trackable,:confirmable

  has_many :group_users
  has_many :groups, through: :group_users
  has_many :uposts
  has_many :gposts
  has_many :u_albums
  has_one_attached :image
  has_many :timelines,as: :content, dependent: :destroy


  acts_as_followable
  acts_as_follower
 def self.search(search)
      return User.all unless search
      User.where(['nickname LIKE(?)', "%#{search}%"])
    end


  def full_profile?
    nickname? && text? && image.present?
  end

end
