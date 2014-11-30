class Budget < ActiveRecord::Base
  has_many :budget_items
  accepts_nested_attributes_for :budget_items, allow_destroy: true
  extend FriendlyId
  friendly_id :use_for_slug, use: :slugged
  
  
  def use_for_slug
    existing_budget = Budget.where('name = ?', self.name)
    if existing_budget.present?
      "#{name} #{existing_budget.count}"
    else
      "#{name}"
    end
  end
  
  def expected_ending_balance
    budget_items.map(&:amount).sum
  end
  
  
  
end
