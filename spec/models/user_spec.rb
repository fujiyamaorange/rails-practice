require 'rails_helper'

RSpec.describe User, type: :model do
  it '#posts' do
    user = User.new(name: 'kaito', email: 'kaito@gmail.com')
    expect(user.posts).to eq []
  end
end
