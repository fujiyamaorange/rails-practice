require 'rails_helper'

RSpec.describe User, type: :model do
  describe '#posts' do
    # letは実行されるときに呼び出される
    let(:params) {{ name: 'kaito', email: 'kaito@gmail.com'}}
    it 'ユーザーを作成' do
      user = User.new(params)
      expect(user.posts).to eq []
    end
  end
  
  
end
