class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :description
      t.string :link
      t.string :category
      t.string :notes
      t.string :status
      t.string :duration
      t.string :level
      t.string :format
      t.date :completed_date_1
      t.date :complete_date_2
      t.string :resource
      t.timestamps
    end
  end
end
