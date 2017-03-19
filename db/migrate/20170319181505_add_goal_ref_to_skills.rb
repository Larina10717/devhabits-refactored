class AddGoalRefToSkills < ActiveRecord::Migration[5.0]
  def change
    add_reference :skills, :goal, foreign_key: true
  end
end
