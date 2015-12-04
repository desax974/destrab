class Createtasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name_task
      t.string :date
      t.references :user, index: true

      t.timestamps
    end
    add_index :tasks, [:user_id, :created_at]
  end
end
