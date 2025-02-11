require 'rails_helper'

RSpec.describe Like, type: :model do
  subject do
    described_class.new(
      post_id: ''
    )
  end

  describe 'Validations' do
    it 'is invalid without valid attributes' do
      expect(subject).to_not be_valid
    end
  end
  describe 'Associations' do
    it { should belong_to(:user) }
    it { should belong_to(:post) }
  end
end
