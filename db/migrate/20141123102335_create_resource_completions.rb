class CreateResourceCompletions < ActiveRecord::Migration
  def change
    create_table :resource_completions do |t|
      t.belongs_to :resource
      t.float :completion_percentage
      t.integer :units
      t.string :unit #default to same as resource
      t.boolean :completed

      t.timestamps
    end
  end
end
