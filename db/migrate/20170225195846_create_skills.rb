class CreateSkills < ActiveRecord::Migration[5.0]
  def change
    create_table :skills do |t|
      t.belongs_to :goal, index: true
      t.string :name
      t.integer :goal_id
    end
  end
end
