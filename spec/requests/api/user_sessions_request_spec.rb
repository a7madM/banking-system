RSpec.describe 'Api::UserSessions', type: :request do
  context '#create' do
    it 'creates a session' do
      password = Faker::Internet.password
      user = create(:user, password: password)

      post '/api/user_sessions', params: { name: user.name, password: password }
    end
  end
end
