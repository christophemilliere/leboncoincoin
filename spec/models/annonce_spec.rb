require 'rails_helper'

RSpec.describe Annonce, type: :model do
  describe 'relations' do
    it { should belong_to(:category) }
    it { should belong_to(:user) }
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:price) }
    it { should validate_presence_of(:city) }
    it { should validate_presence_of(:zip_code) }
    it { should validate_presence_of(:category) }
  end
end
