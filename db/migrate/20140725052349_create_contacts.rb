class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string   :first_name
      t.string   :middle_name
      t.string   :last_name
      t.integer   :added_by_id
      ## For friendly ID.
      t.string :slug, null: false

      t.timestamps
    end
  end
end

