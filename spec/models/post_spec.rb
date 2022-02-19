require 'rails_helper'

RSpec.describe Post, type: :model do
  describe '#user' do
    let(:params) {{ content: 'サンプルの投稿', user_id: '1' }}
    let(:post) { Post.new(params) }
    subject { post.user }

    it {is_expected.to eq nil}
  end
end
