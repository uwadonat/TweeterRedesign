class Following < ApplicationRecord
    validates :followed_id, presence: true
end
