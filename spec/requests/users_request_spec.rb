require 'rails_helper'

RSpec.describe "UsersController", type: :request do
  describe 'GET #index' do
    it 'returns a 302 response' do
      get '/users/index'
      expect(response).to have_http_status "302"
    end
  end

  describe 'GET #show' do
    before do
      @user = User.new({name: 'kaito', email: 'kaito@gmail.com'})
    end
    it 'responses successfully' do
      get '/users/:id', params: {id: @user.id}
      expect(response).to have_http_status "302"
    end
  end
  

  # pendingされる
  xit 'absolute success' do
    # pending '以下は失敗するのでpending'
    expect(1 + 1).to eq 3
  end
end
