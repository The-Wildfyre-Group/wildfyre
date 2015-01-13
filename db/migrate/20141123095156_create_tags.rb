class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name, null: false
      ## For friendly ID.
      t.string :slug, null: false 
      t.timestamps
    end
    add_index :tags, :name
  end
end
