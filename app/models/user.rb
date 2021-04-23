class User < ApplicationRecord
  mount_uploader :profile_photo, ImageUploader
  mount_uploader :cover_image, ImageUploader
  has_many :technologies
  has_many :followings
  has_many :followers, through: :followings, foreign_key: 'user_id'
  # has_many :followed, through: :followings, foreign_key: 'followed_id'
  # has_many :followers, :through => :followings, :source => 'User'
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
