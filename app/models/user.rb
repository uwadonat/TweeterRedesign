class User < ApplicationRecord
  mount_uploader :profile_photo, ImageUploader
  mount_uploader :cover_image, ImageUploader
  has_many :technologies
  has_many :followings
  has_many :likes, dependent: :destroy
  has_many :followers, through: :followings, foreign_key: 'user_id'
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :email, :fullname, :profile_photo, :cover_image, presence: true
end
