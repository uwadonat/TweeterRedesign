class Following < ApplicationRecord
  belongs_to :user
  belongs_to :follower, class_name: 'User', foreign_key: 'followed_id'
  validates_presence_of :user_id, :followed_id
  
end
