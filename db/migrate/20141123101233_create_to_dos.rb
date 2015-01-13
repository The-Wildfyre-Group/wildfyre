class CreateToDos < ActiveRecord::Migration
  def change
    create_table :to_dos do |t|
      t.belongs_to :category
      t.string :name
      t.integer :number_of_times_completed
      ## For friendly ID.
      t.string :slug, null: false

      t.timestamps
    end
    add_index :to_dos, :name
  end
end
