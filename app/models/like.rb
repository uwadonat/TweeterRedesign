class Like < ApplicationRecord
  validates :user_id, uniqueness: { scope: :technology_id }
  belongs_to :user
  belongs_to :technology
  validates :technology_id, :user_id, presence: true
end
