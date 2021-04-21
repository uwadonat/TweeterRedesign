class Following < ApplicationRecord
  belongs_to :user
  belongs_to :followed, class_name: 'User'
  validates_presence_of :user_id, :followed_id
end
