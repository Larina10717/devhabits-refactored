require 'spec_helper'

RSpec.describe Goal, type: :model do
  let(:goal) { Goal.new }
  let(:user) { User.new }
  let(:skills) { [Skill.new]
 }

  it 'is created' do
    expect(goal).to be_truthy
  end

  it 'has a user' do
    expect(goal.id).to eq(user.goal_id)
  end

  it 'has many skills' do
    expect(goal).to have_many(skills)
  end
end
