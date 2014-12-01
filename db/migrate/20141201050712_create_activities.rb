class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.belongs_to :user
      t.belongs_to :task
      t.string :action
      t.string :trackable_type
      t.integer :trackable_id
      t.boolean :public
      t.boolean :admin

      t.timestamps
    end
  end
end
