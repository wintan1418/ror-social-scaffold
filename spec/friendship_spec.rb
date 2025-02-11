require 'rails_helper'

RSpec.describe Friendship, type: :model do
  subject do
    described_class.new(
      user_id: ''
    )
  end

  describe 'Validations' do
    it 'is invalid without valid attributes' do
      expect(subject).to_not be_valid
    end
  end

  describe 'Associations' do
    it { should belong_to(:user) }
    it { should belong_to(:friend) }
  end
end
