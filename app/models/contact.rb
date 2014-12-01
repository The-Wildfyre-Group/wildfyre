class Contact < ActiveRecord::Base
  extend FriendlyId
  friendly_id :use_for_slug, use: :slugged
  
  def use_for_slug
    existing_contact = Contact.where('first_name = ?', self.first_name).where('last_name = ?', self.last_name)
    if existing_contact.present?
      "#{first_name} #{last_name} #{existing_contact.count}"
    else
      "#{first_name} #{last_name}"
    end
  end
  
  def full_name
    first_name && last_name && "#{first_name} #{last_name}" || email
  end
end
