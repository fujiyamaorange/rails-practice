require 'rails_helper'

RSpec.describe Like, type: :model do
  describe '#initialize' do
    let(:params) {{ user_id: '1', post_id: '1' }}
    let(:like) { Like.new(params) }
    subject { like }
    it {is_expected.not_to eq nil}
  end
end
