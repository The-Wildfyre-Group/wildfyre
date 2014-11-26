class Task < ActiveRecord::Base
  scope :today, lambda { where(end_day: Date.today) }
  scope :tomorrow, lambda { where(end_day: Date.today + 1) }
  
  belongs_to :category
  belongs_to :site
  belongs_to :to_do
  has_many :assigned_tasks, dependent: :destroy
  has_many :users, through: :assigned_tasks
  
  def deadline
    if end_day.nil?
      "No Deadline"
    elsif end_day == Date.today
      "Due Today"
    elsif end_day == (Date.today + 1)
      "Due Tomorrow"
    elsif end_day <= (Date.today + 7)
      "Due Within 7 Days"
    elsif end_day > (Date.today + 7)
      "Long Term" 
    end
  end
  
  def category_name 
    Category.find(category_id).name unless category_id.nil?
  end
  
  def site_name
    Site.find(site_id).name unless site_id.nil?
  end
  
  def todo_name
    ToDo.find(to_do_id).name unless to_do_id.nil?
  end
  
  def project_name
    Project.find(project_id).name unless project_id.nil?
  end
  
  
  def user_name(slug)
    users.where(slug: slug).last.slug unless users.where(slug: slug).nil?
  end
  
  # true if this spa should pass through these filters
  # filters are hashes with :type and :value keys: example -> filter: {"type"=>"state", "value"=>"California"} {"0"=>{"type"=>"city", "value"=>"Louisville"}, "1"=>{"type"=>"venue_type", "value"=>"Hotel Spa"}}
  
  
  # def accepted_filter_types
#      accepted_filter_types = ['user', 'category', 'deadline', 'site', 'todo', 'priority', 'project']
#   end
#
#   #1 check to see if filters are valid
#   def filters_submitted_are_valid_filters?(filters)
#     types = filters.map { |f| f["type"] }
#     type_count_matches = [types + accepted_filter_types].flatten.uniq.count == accepted_filter_types.count
#     return true if filters.empty? || type_count_matches
#     raise "Unrecognized filter:" unless type_count_matches
#     false
#   end
  
  def passes_filters?(filters, type)
    selected_filters = filters.select { |filter| filter[:type]==type }
    return true if filters.empty? || selected_filters.empty? 
    raise "Unrecognized filter: #{type}" if !['user', 'category_name', 'deadline', 'site_name', 'todo_name', 'priority', 'project_name'].include?(type)
    
      if type == "user"
        selected_filters.each do |filter|
          user_id = User.find_by_slug(filter["value"]).id
          return true if user_ids.include?(user_id)
        end
      else
        return selected_filters.any?{|filter| filter[:value]==send(type)}
      end
    false
    end
  
  def self.user_filters_for_tasks(tasks, current_filters)
    user_to_count = Hash.new(0) #new hash pairs will by default have 0 as values
    tasks.each do |task| 
      if task.passes_filters?(current_filters, 'category_name') and task.passes_filters?(current_filters, 'deadline') and task.passes_filters?(current_filters, 'site_name') and  task.passes_filters?(current_filters, 'todo_name') and task.passes_filters?(current_filters, 'priority') and task.passes_filters?(current_filters, 'project_name')

        task.users.each do |user|
          user_to_count[task.user_name(user.slug)] += 1
        end
      end
    end
    user_filters = user_to_count.map do |user, count|
      # slug = User.find_by_full_name(user)[:slug]
      current = current_filters.any?{|f| f[:type]=="user" and f[:value]== user}
      {type: "user", value: user, count: count, current: current}
    end
    user_filters.sort{|a,b| b[:count] <=> a[:count]}
  end
  
  def self.category_filters_for_tasks(tasks, current_filters)
    category_name_to_count = Hash.new(0) #new hash pairs will by default have 0 as values
    tasks.each do |task| 
      if task.passes_filters?(current_filters, 'user') and task.passes_filters?(current_filters, 'deadline') and task.passes_filters?(current_filters, 'site_name') and  task.passes_filters?(current_filters, 'todo_name') and task.passes_filters?(current_filters, 'priority') and task.passes_filters?(current_filters, 'project_name')
        unless task.category_name.nil? || task.category_name.blank?
          category_name_to_count[task.category_name] += 1
        end
      end
    end
    category_name_filters = category_name_to_count.map do |category_name, count|
      current = current_filters.any?{|f| f[:type]=="category_name" and f[:value]==category_name}
      {type: "category_name", value: category_name, count: count, current: current}
    end
    category_name_filters.sort{|a,b| b[:count] <=> a[:count]}
  end
  
  def self.site_filters_for_tasks(tasks, current_filters)
    site_name_to_count = Hash.new(0) #new hash pairs will by default have 0 as values
    tasks.each do |task| 
      if task.passes_filters?(current_filters, 'category_name') and task.passes_filters?(current_filters, 'deadline') and task.passes_filters?(current_filters, 'user') and  task.passes_filters?(current_filters, 'todo_name') and task.passes_filters?(current_filters, 'priority') and task.passes_filters?(current_filters, 'project_name')
        unless task.site_name.nil? || task.site_name.blank?
          site_name_to_count[task.site_name] += 1
        end
      end
    end
    site_name_filters = site_name_to_count.map do |site_name, count|
      current = current_filters.any?{|f| f[:type]=="site_name" and f[:value]==site_name}
      {type: "site_name", value: site_name, count: count, current: current}
    end
    site_name_filters.sort{|a,b| b[:count] <=> a[:count]}
  end
  
  def self.todo_filters_for_tasks(tasks, current_filters)
    todo_name_to_count = Hash.new(0) #new hash pairs will by default have 0 as values
    tasks.each do |task| 
      if task.passes_filters?(current_filters, 'category_name') and task.passes_filters?(current_filters, 'deadline') and task.passes_filters?(current_filters, 'site_name') and  task.passes_filters?(current_filters, 'user') and task.passes_filters?(current_filters, 'priority') and task.passes_filters?(current_filters, 'project_name')
        unless task.todo_name.nil? || task.todo_name.blank?
          todo_name_to_count[task.todo_name] += 1
        end
      end
    end
    todo_name_filters = todo_name_to_count.map do |todo_name, count|
      current = current_filters.any?{|f| f[:type]=="todo_name" and f[:value]==todo_name}
      {type: "todo_name", value: todo_name, count: count, current: current}
    end
    todo_name_filters.sort{|a,b| b[:count] <=> a[:count]}
  end
  
  def self.priority_filters_for_tasks(tasks, current_filters)
    priority_to_count = Hash.new(0) #new hash pairs will by default have 0 as values
    tasks.each do |task| 
      if task.passes_filters?(current_filters, 'category_name') and task.passes_filters?(current_filters, 'deadline') and task.passes_filters?(current_filters, 'site_name') and  task.passes_filters?(current_filters, 'todo_name') and task.passes_filters?(current_filters, 'user') and task.passes_filters?(current_filters, 'project_name')
        unless task.priority.nil? || task.priority.blank?
          priority_to_count[task.priority] += 1
        end
      end
    end
    priority_filters = priority_to_count.map do |priority, count|
      current = current_filters.any?{|f| f[:type]=="priority" and f[:value]==priority}
      {type: "priority", value: priority, count: count, current: current}
    end
    priority_filters.sort{|a,b| b[:count] <=> a[:count]}
  end
  
  def self.deadline_filters_for_tasks(tasks, current_filters)
    deadline_to_count = Hash.new(0) #new hash pairs will by default have 0 as values
    tasks.each do |task| 
      if task.passes_filters?(current_filters, 'category_name') and task.passes_filters?(current_filters, 'user') and task.passes_filters?(current_filters, 'site_name') and  task.passes_filters?(current_filters, 'todo_name') and task.passes_filters?(current_filters, 'priority') and task.passes_filters?(current_filters, 'project_name')
        deadline_to_count[task.deadline] += 1
      end
    end
    deadline_filters = deadline_to_count.map do |deadline, count|
      current = current_filters.any?{|f| f[:type]=="deadline" and f[:value]==deadline}
      {type: "deadline", value: deadline, count: count, current: current}
    end
    deadline_filters.sort{|a,b| b[:count] <=> a[:count]}
  end
  
  def self.project_filters_for_tasks(tasks, current_filters)
    project_name_to_count = Hash.new(0) #new hash pairs will by default have 0 as values
    tasks.each do |task| 
      if task.passes_filters?(current_filters, 'category_name') and task.passes_filters?(current_filters, 'user') and task.passes_filters?(current_filters, 'site_name') and  task.passes_filters?(current_filters, 'todo_name') and task.passes_filters?(current_filters, 'priority') and task.passes_filters?(current_filters, 'deadline')
        project_name_to_count[task.project_name] += 1
      end
    end
    project_name_filters = project_name_to_count.map do |project_name, count|
      current = current_filters.any?{|f| f[:type]=="project_name" and f[:value]==project_name}
      {type: "project_name", value: project_name, count: count, current: current}
    end
    project_name_filters.sort{|a,b| b[:count] <=> a[:count]}
  end
  
  # def self.task_from_user_ids(filters,tasks)
  #   user_filters = filters.select { |f| f["type"] == "user"}
  #   #user is a slug string
  #   user_ids = []
  #     user_filters.map do |user_filter|
  #       if User.exists?(slug: user_filter["value"])
  #         user_ids << User.find_by_slug(user_filter["value"]).id
  #       end
  #     end
  #   Task.joins(:users).where(:users => { :id => user_ids })
  # end

  
  def self.apply_filters(filters, tasks)
    tasks.select do |task| 
      task.passes_filters?(filters, 'user') and
      task.passes_filters?(filters, 'category_name') and
      task.passes_filters?(filters, 'project_name') and 
      task.passes_filters?(filters, 'priority') and
      task.passes_filters?(filters, 'site_name') and
      task.passes_filters?(filters, 'todo_name') and
      task.passes_filters?(filters, 'deadline')
    end
  end
  
  
  
  
  
end
