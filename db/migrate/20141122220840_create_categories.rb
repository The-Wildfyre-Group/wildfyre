class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      ## For friendly ID.
      t.string :slug, null: false

      t.timestamps
    end
    add_index :categories, :name
  end
end
