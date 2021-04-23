require 'rails_helper'

RSpec.describe Technology, type: :model do

  it 'returns true if tech_description is provided' do
    user = User.new(email: 'uwadonat@gmail.com', fullname: 'UWAMAHORO', password: '12345566', profile_photo: 'donat.jpeg', cover_image:'eric.jpeg').save
    technology = user.create(tech_desc: 'I love you').save
    expect(technology).to eq(true)
  end

 
end
