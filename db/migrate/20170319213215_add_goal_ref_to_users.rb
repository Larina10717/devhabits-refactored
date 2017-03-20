class AddGoalRefToUsers < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :goal, foreign_key: true, index: true
  end
end
