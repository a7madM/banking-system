RSpec.describe Article, type: :model do
  context '#validation' do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:url) }
    it { is_expected.to validate_uniqueness_of(:url).case_insensitive }

    it { is_expected.to validate_presence_of(:body).on(:update) }
    it { is_expected.to validate_presence_of(:keywords).on(:update) }
  end
end
