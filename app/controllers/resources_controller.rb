class ResourcesController < ActionController::Base
  
  def index
    @resources = Resource.all
  end
  
  def new
    @resource = Resource.new
  end
  
  def create
    @resource = Resource.new(resource_params)
    if @resource.save
      redirect_to resources_path
    else
      render :new
    end
  end
  
  def show
    
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
    params.require(:resource).permit(:description, :link, :notes, :status, :category, :completed_date_1, :complete_date_2, :resource)
  end
   
end
