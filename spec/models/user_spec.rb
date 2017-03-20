require 'spec_helper'

RSpec.describe User, type: :model do
  before do
    @user = Fabricate(:user) 
  end

  it 'has valid parameters' do
    expect(@user).to be_truthy
  end

  it 'creates a goal' do
    expect(@user.goal_id).to be_truthy
  end
end
