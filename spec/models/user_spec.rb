require 'rails_helper'

RSpec.describe User, type: :model do
  describe '#posts' do
    # letは実行されるときに呼び出される
    let(:params) {{ name: 'kaito', email: 'kaito@gmail.com'}}
    let(:user) { User.new(params)}
    subject { user.posts }

    it { is_expected.to eq [] }
  end
end
