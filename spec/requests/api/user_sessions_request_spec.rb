RSpec.describe 'Api::UserSessions', type: :request do
  context '#create' do
    it 'creates a session' do
      password = Faker::Internet.password
      user = create(:user, password: password)

      post '/api/user_sessions', params: { name: user.name, password: password }
      expect(response.status).to eq(200)
      # expect(JSON.parse(response.body)).to eq('')
    end

    it 'failed to create a session, user not found' do
      post '/api/user_sessions', params: { name: Faker::Name.name, password: Faker::Internet.password }
      expect(response.status).to eq(404)
    end

    it 'failed to create a session, invalid passord' do
      password = Faker::Internet.password
      user = create(:user, password: password)
      post '/api/user_sessions', params: { name: user.name, password: Faker::Internet.password }
      expect(response.status).to eq(404)
    end
  end
end
