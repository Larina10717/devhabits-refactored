class CreateGoals < ActiveRecord::Migration[5.0]
  def change
    create_table :goals do |t|
      t.belongs_to :user, index: true
      t.string :name
      t.text :description
      t.integer :user_id

      t.timestamps
    end
  end
end
