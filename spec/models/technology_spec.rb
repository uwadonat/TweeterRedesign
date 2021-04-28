require 'rails_helper'

RSpec.describe Technology, type: :model do
  context 'validation tests' do
    it 'returns false if all params are not filled in.' do
      @tech = Technology.new(tech_desc: 'uwadonat@gmail.com').save
      expect(@tech).to eq(false)
    end
  end

  describe 'associations' do
    it { should belong_to(:user).class_name('User')}
  end

  describe 'validations' do
    it { should validate_presence_of(:tech_desc) }
  end

end
