class Profile < ActiveRecord::Base
  belongs_to :user
  serialize :skills, Array
end
