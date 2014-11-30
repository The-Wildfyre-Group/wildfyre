class Meeting < ActiveRecord::Base
  has_many :meeting_items
  accepts_nested_attributes_for :meeting_items, allow_destroy: true
  extend FriendlyId
  friendly_id :use_for_slug, use: :slugged
  
  
  def use_for_slug
    existing_meeting = Meeting.where('name = ?', self.name)
    if existing_meeting.present?
      "#{name} #{existing_meeting.count}"
    else
      "#{name}"
    end
  end
  
  def self.categories_for_meeting_items
    ["Upcoming Events", "Things To Discuss", "Administrative", "Improvements"].sort
  end
  
end
