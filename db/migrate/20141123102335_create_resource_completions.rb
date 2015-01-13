class CreateResourceCompletions < ActiveRecord::Migration
  def change
    create_table :resource_completions do |t|
      t.belongs_to :resource
      t.belongs_to :user
      t.float :completion_percentage, default: 0.0
      t.integer :units
      t.string :unit #default to same as resource
      t.boolean :completed, default: false

      t.timestamps
    end
  end
end
