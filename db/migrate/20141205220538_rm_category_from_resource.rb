class RmCategoryFromResource < ActiveRecord::Migration
  def change
    remove_column :resources, :category
  end
end
