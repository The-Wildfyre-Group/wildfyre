class ResourceCompletionsController < ApplicationController
  # before_action :find_resource
  # before_action :find_user
  
  def index
    @resource_completions = ResourceCompletion.all
  end
    
  def create
    current_user.checkout_resource!(resource_completion_params)
    redirect_to :back
  end
    
  def edit
    
  end
  
  def update
    
  end
  
  def destroy
    
  end
  
  protected
  
  def find_resource
    @resource = Resource.friendly.find(params[:resource_id])
  end
  
  def find_user
    @user = User.find(params[:user_id])
  end
  
  def resource_completion_params
    params.require(:resource_completion).permit(:user_id, :resource_id, :unit, :units, :completed, :completion_percentage)
  end
end
