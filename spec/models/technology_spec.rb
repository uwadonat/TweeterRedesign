require 'rails_helper'

RSpec.describe Technology, type: :model do
  context 'validation tests' do
    it 'returns false if all params are not filled in.' do
      @tech = Technology.new(tech_desc: 'uwadonat@gmail.com').save
      expect(@tech).to eq(false)
    end
  end
end
