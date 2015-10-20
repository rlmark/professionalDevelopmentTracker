class CreateTagGoals < ActiveRecord::Migration
  def change
    create_table :tag_goals do |t|
      t.integer :goal_id
      t.integer :tag_id

      t.timestamps null: false
    end
  end
end
