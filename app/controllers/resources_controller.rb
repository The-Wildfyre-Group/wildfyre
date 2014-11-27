class ResourcesController < ApplicationController
  
  def index
    @resources = Resource.all
  end
  
  def new
    @resource = Resource.new
  end
  
  def create
    @resource = Resource.new(resource_params)
    @resource.user_id = current_user.id
    if @resource.save
      
      redirect_to resources_path
    else
      render :new
    end
  end
  
  def show
    @resource = Resource.friendly.find(params[:id])
  end
  
  def edit
    @resource = Resource.find(params[:id])
  end
  
  def update
    @resource = Resource.find(params[:id])
    if @resource.update_attributes(resource_params)
      redirect_to resources_path
    else
      render :edit
    end
  end
  
  def destroy
    
  end
  
  protected
  
  def resource_params
    params.require(:resource).permit(:name, :units, :unit, :format, :description, :link, :category, :resource, :level)
  end
   
end
