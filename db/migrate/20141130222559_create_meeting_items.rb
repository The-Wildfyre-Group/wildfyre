class CreateMeetingItems < ActiveRecord::Migration
  def change
    create_table :meeting_items do |t|
      t.belongs_to :meeting
      t.belongs_to :user
      t.string :category
      t.text :item

      t.timestamps
    end
  end
end
