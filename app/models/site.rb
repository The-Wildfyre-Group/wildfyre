class Site < ActiveRecord::Base
  extend FriendlyId
  friendly_id :show_url, use: :slugged
  has_many :tasks
  
  
  def show_url
    existing_site = Site.where('name = ?', self.name)
    if existing_site.present?
      "#{name} #{existing_site.count}"
    else
      "#{name}"
    end    
  end
end
