
RSpec.describe User, type: :model do
  context '#validations' do
    it { is_expected.to validate_uniqueness_of(:name).case_insensitive }
    it { is_expected.to validate_presence_of(:name) }
  end
end
