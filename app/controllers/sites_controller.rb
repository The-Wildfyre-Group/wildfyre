class SitesController < ApplicationController
  before_action :find_site
  
  def index
    
  end
  
  def new
    
  end 
  
  def create
    
  end
  
  def show
    @complete_tasks = @site.tasks.where(completed: true)
  end
  
  def edit
    
  end
  
  def update
    
  end
  
  def destroy
    
  end
  
  protected
  
  def find_site
    @site = Site.friendly.find(params[:id])
  end
  
  
  def site_params
    
  end
  
  
end
