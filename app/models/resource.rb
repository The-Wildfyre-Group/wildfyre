class Resource < ActiveRecord::Base
  extend FriendlyId
  friendly_id :use_for_slug, use: :slugged
  has_many :resource_completions
  
  def use_for_slug
    existing_resource = Resource.where('name = ?', self.name)
    if existing_resource.present?
      "#{name} #{existing_resource.count}"
    else
      "#{name}"
    end
  end
end
