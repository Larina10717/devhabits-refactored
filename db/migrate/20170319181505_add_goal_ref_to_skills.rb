class AddGoalRefToSkills < ActiveRecord::Migration[5.0]
  def change
    add_reference :skills, :goal, foreign_key: true, index: true
  end
end
