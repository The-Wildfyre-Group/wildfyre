class CreateBudgets < ActiveRecord::Migration
  def change
    create_table :budgets do |t|
      t.date :as_of
      t.date :until
      t.string :name
      ## For friendly ID.
      t.string :slug, null: false

      t.timestamps
    end
  end
end
