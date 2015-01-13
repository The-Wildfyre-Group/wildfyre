class CreateResourceNotes < ActiveRecord::Migration
  def change
    create_table :resource_notes do |t|
      t.belongs_to :user
      t.belongs_to :resource
      t.text :note

      t.timestamps
    end
  end
end
