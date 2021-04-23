require 'rails_helper'

RSpec.describe Following, type: :model do
  
  context "followings test" do  
  
    it 'return false if followed is not in user list' do
      user1 = User.new(email: 'uwadonat@gmail.com', fullname: 'UWAMAHORO', password: '12345566', profile_photo: 'donat.jpeg', cover_image:'eric.jpeg').save
      
      user2 = User.new(email: 'uwadonat2@gmail.com', fullname: 'donat', password: '12345566', profile_photo: 'donat.jpeg', cover_image:'eric.jpeg').save
      @follow = Following.new(followed_id: user1).save
      expect(@follow).to eq(false)
    end

    

  end
end
