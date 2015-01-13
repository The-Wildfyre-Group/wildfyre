class CreateBudgetItems < ActiveRecord::Migration
  def change
    create_table :budget_items do |t|
      t.belongs_to :budget
      t.string :item
      t.float :amount
      t.date :date_of_occurrence

      t.timestamps
    end
  end
end
