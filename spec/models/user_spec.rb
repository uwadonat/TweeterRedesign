require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validation tests' do
    it 'returns false if not all params are filled in.' do
      user = User.new(email: 'uwadonat@gmail.com', fullname: 'UWAMAHORO').save
      expect(user).to eq(false)
    end

    it 'returns false if email is not valid.' do
      user = User.new(email: 'uwadonat@gmai', fullname: 'UWAMAHORO').save
      expect(user).to eq(false)
    end

    it "Can't read a user that has not been created." do
      expect(User.find_by(email: 'jordy')).to eq(nil)
    end

    it 'returns false if udername is not not provided' do
      user = User.new(email: 'uwadonat@gmail.com', password: '12345566',
                      profile_photo: 'donat.jpeg', cover_image: 'eric.jpeg').save
      expect(user).to eq(false)
    end

    it 'returns false if password values are less than 6 ' do
      user = User.new(email: 'uwadonat@gmail.com', fullname: 'UWAMAHORO', password: '166', profile_photo: 'donat.jpeg',
                      cover_image: 'eric.jpeg').save
      expect(user).to eq(false)
    end

    describe 'validations' do
      it { should validate_presence_of(:fullname) }
    end
  end
end
