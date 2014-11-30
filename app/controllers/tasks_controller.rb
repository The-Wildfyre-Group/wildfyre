class TasksController < ApplicationController
   before_action :find_tasks, only: [:index, :create]
   #respond_to :html, :js
  
   def index
     @task = Task.new
     @current_filters = (params[:current_filters] || {}).values.uniq
     @tasks = Task.all
     @complete_tasks = Task.where(completed: true)
     @incomplete_tasks = Task.where(completed: false)
     
     # these filters must be retrieved before we apply filters
     if params[:ajax].blank?
       @complete_user_filters = Task.user_filters_for_tasks(@complete_tasks, @current_filters)
       @incomplete_user_filters = Task.user_filters_for_tasks(@incomplete_tasks, @current_filters)
       @complete_category_filters = Task.category_filters_for_tasks(@complete_tasks, @current_filters)
       @incomplete_category_filters = Task.category_filters_for_tasks(@incomplete_tasks, @current_filters)
       @complete_site_filters = Task.site_filters_for_tasks(@complete_tasks, @current_filters)
       @incomplete_site_filters = Task.site_filters_for_tasks(@incomplete_tasks, @current_filters)
       @complete_todo_filters = Task.todo_filters_for_tasks(@complete_tasks, @current_filters)
       @incomplete_todo_filters = Task.todo_filters_for_tasks(@incomplete_tasks, @current_filters)
       @complete_priority_filters = Task.priority_filters_for_tasks(@complete_tasks, @current_filters)
       @incomplete_priority_filters = Task.priority_filters_for_tasks(@incomplete_tasks, @current_filters)
       @complete_deadline_filters = Task.deadline_filters_for_tasks(@complete_tasks, @current_filters)
       @incomplete_deadline_filters = Task.deadline_filters_for_tasks(@incomplete_tasks, @current_filters)
       @complete_project_filters = Task.project_filters_for_tasks(@complete_tasks, @current_filters)
       @incomplete_project_filters = Task.project_filters_for_tasks(@incomplete_tasks, @current_filters)
     end


     p"=========================================================="
     p @incomplete_tasks.count
     p @incomplete_tasks.class
     @complete_tasks = @tasks.where(completed: true).apply_filters(@current_filters, @complete_tasks)
     @incomplete_tasks = @tasks.where(completed: true).apply_filters(@current_filters, @incomplete_tasks)
     
     p @current_filters
     p"=========================================================="
     p @incomplete_tasks.count
     p"=========================================================="
     respond_to do |format|
       format.html
       format.js
     end
   end
  
   def new
     @task = Task.new
   end
  
   def create
     @task = Task.new(task_params)
     @task.added_by_id = current_user.id
     @result = @task.save
     if @result
     respond_to do |format|
       format.html { redirect_to tasks_url }
       format.js
     end
     else
       render :new
     end
   end
   
   def edit
     @task = Task.find(params[:id])
     respond_to do |format|
       format.html { redirect_to tasks_url }
       format.js 
     end
   end
   
   def update
     @task = Task.find(params[:id])
     @task.update_attributes!(task_params)
     if @task.completed?
       @task.update_attributes(closed_by_id: current_user.id, completed_day: Date.today, completed_time: Time.now)
       @task.site.update_attributes( last_activity: @task.id, last_user: current_user.id, last_task_completed: Time.now) if @task.site.nil? 
     else
       @task.update_attributes(closed_by_id: nil, completed_day: nil, completed_time: nil)
     end
     respond_to do |format|
       format.html { redirect_to tasks_url }
       format.js
     end
   end

   def destroy
     @task = Task.destroy(params[:id])
     respond_to do |format|
       format.html { redirect_to tasks_url }
       format.js
     end
   end
  
   private

   def find_tasks
     @tasks = Task.all
   end

   def task_params
     params.require(:task).permit(:name, :category_id, :to_do_id, :site_id, :project_id, {user_ids: []}, :start_day, :end_day, :start_time, :end_time, :public, :duration_expected, :duration_expected_units, :duration_actual, :duration_actual_units, :priority, :source, :notes, :completion_notes, :recurring, :recurring_time, :completed )
   end
  
end




# def index
#   @task = Task.new
#   @current_filters = (params[:current_filters] || {}).values.uniq
#   @tasks = Task.all
#   @complete_tasks = Task.where(completed: true)
#   @incomplete_tasks = Task.where(completed: false)
#
#   # these filters must be retrieved before we apply filters
#   if params[:ajax].blank?
#     @complete_user_filters = Task.user_filters_for_tasks(@complete_tasks, @current_filters)
#     @incomplete_user_filters = Task.user_filters_for_tasks(@incomplete_tasks, @current_filters)
#     @complete_category_filters = Task.category_filters_for_tasks(@complete_tasks, @current_filters)
#     @incomplete_category_filters = Task.category_filters_for_tasks(@incomplete_tasks, @current_filters)
#     @complete_site_filters = Task.site_filters_for_tasks(@complete_tasks, @current_filters)
#     @incomplete_site_filters = Task.site_filters_for_tasks(@incomplete_tasks, @current_filters)
#     @complete_todo_filters = Task.todo_filters_for_tasks(@complete_tasks, @current_filters)
#     @incomplete_todo_filters = Task.todo_filters_for_tasks(@incomplete_tasks, @current_filters)
#     @complete_priority_filters = Task.priority_filters_for_tasks(@complete_tasks, @current_filters)
#     @incomplete_priority_filters = Task.priority_filters_for_tasks(@incomplete_tasks, @current_filters)
#     @complete_deadline_filters = Task.deadline_filters_for_tasks(@complete_tasks, @current_filters)
#     @incomplete_deadline_filters = Task.deadline_filters_for_tasks(@incomplete_tasks, @current_filters)
#     @complete_project_filters = Task.project_filters_for_tasks(@complete_tasks, @current_filters)
#     @incomplete_projectfilters = Task.project_filters_for_tasks(@incomplete_tasks, @current_filters)
#   end
#
#
#   @complete_tasks = @tasks.where(completed: true).apply_filters(@current_filters, @complete_tasks)
#   p "======================= Incomplete Task Before:"
#   p @incomplete_tasks.count
#   @incomplete_tasks = @tasks.where(completed: true).apply_filters(@current_filters, @incomplete_tasks)
#   p "======================= Incomplete Task After:"
#   p @incomplete_tasks.count
#
#
#
#   respond_to do |format|
#     format.html
#     format.js
#   end
# end
