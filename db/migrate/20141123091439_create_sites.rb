class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :name
      t.string :status
      t.string :url
      t.string :git
      t.boolean :primary
      t.integer :primary_site_id
      t.date :renewal_date
      t.datetime :last_activity
      t.string :last_user
      t.string :last_task_completed
      ## For friendly ID.
      t.string :slug, null: false, default: ""

      t.timestamps
    end
    add_index :sites, :name
  end
end
