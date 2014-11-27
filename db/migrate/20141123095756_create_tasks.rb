class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.integer :added_by_id
      t.integer :category_id
      t.integer :to_do_id
      t.integer :site_id
      t.integer :project_id
      t.integer :closed_by_id
      t.integer :resource_id
      t.date :completed_day
      t.time :completed_time
      t.date :start_day
      t.date :end_day
      t.time :start_time
      t.time :end_time
      t.boolean :public, default: true
      t.integer :duration_expected
      t.string :duration_expected_units
      t.integer :duration_actual
      t.string :duration_actual_units
      t.string :priority
      t.string :source
      t.text :notes
      t.text :completion_notes
      t.string :recurring
      t.string :recurring_time
      t.boolean :completed, default: false
      

      t.timestamps
    end
    add_index :tasks, :name
    add_index :tasks, :completed
  end
end
