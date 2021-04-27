require 'rails_helper'

RSpec.describe Following, type: :model do
  context ' test following model' do
    before do
      @user1 = User.new(email: 'uwadonat@gmail.com', fullname: 'UWAMAHORO', password: '12345566',
                        profile_photo: 'donat.jpeg', cover_image: 'eric.jpeg').save
      @user2 = User.new(email: 'paradis@gmail.com', fullname: 'Paradis', password: '12345566',
                        profile_photo: 'donat.jpeg', cover_image: 'eric.jpeg').save
    end
    it 'return false if followed_id is not provided' do
      @invite = Following.create
      expect(@invite).to_not be_valid
    end
  end
end
