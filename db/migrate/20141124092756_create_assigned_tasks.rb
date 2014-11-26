class CreateAssignedTasks < ActiveRecord::Migration
  def change
    create_table :assigned_tasks do |t|
      t.belongs_to :task
      t.belongs_to :user
      t.timestamps
    end
  end
end
