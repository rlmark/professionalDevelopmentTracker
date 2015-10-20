class CreateSubtasks < ActiveRecord::Migration
  def change
    create_table :subtasks do |t|
      t.string :name
      t.integer :goal_id
      t.text :description
      t.string :status
      t.date :due_date

      t.timestamps null: false
    end
  end
end
