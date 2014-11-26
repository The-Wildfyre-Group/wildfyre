class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :status
      t.string :url
      t.string :git
      t.text :description
      t.datetime :last_activity
      t.string :last_user
      t.string :last_task_completed
      t.string :admin_ids
      ## For friendly ID.
      t.string :slug, null: false

      t.timestamps
    end
    add_index :projects, :name
  end
end
