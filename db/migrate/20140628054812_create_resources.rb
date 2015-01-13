class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :name
      t.text :description
      t.string :link
      t.string :category
      t.string :duration
      t.integer :units
      t.string :unit
      t.string :level
      t.string :format
      t.integer :user_id
      t.string :slug, null: false
      t.timestamps
    end
    add_index :resources, :name
  end
end
