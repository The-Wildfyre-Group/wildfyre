class Category < ActiveRecord::Base
  has_many :tasks
  has_many :to_dos
end
