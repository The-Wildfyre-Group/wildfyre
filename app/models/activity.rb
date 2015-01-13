class Activity < ActiveRecord::Base
  belongs_to :user
  belongs_to :task
  belongs_to :trackable, :polymorphic => true
  #has_many :comments, :as => :commentable, :dependent => :destroy
  
  class << self

    def track(user_id, task_id, action, trackable_type, trackable_id, pub)
      activity = self.create(user_id: user_id, task_id: task_id, action: action, trackable_type: trackable_type, trackable_id: trackable_id, public: pub, admin: false)
      begin
        action_view = ActionView::Base.new("app/views/activities")
        action_view.class_eval do
          include Rails.application.routes.url_helpers
          include ApplicationHelper
        end
        activity_template = action_view.render(:partial => "#{activity.trackable_type.underscore}", locals: {activity: activity})
        PrivatePub.publish_to("/messages/new", activity_template: activity_template)
      rescue Exception => e
        puts e.message
        puts e.backtrace
      end
    end


  end

end
