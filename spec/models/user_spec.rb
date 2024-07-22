require 'rails_helper'

RSpec.describe User, type: :model do
  it '有 email' do
    user = User.new email: 'test@test.com'
    expect(user.email).to eq 'test@test.com'
  end
end
