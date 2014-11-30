class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.date :as_of
      t.string :name
      t.string :category
      ## For friendly ID.
      t.string :slug, null: false

      t.timestamps
    end
  end
end
