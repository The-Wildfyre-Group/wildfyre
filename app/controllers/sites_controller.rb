class SitesController < ApplicationController
  before_action :find_site, except: [:index, :new, :create]
  
  def index
    @sites = Site.all
    @site = Site.new
    respond_to do |format|
      format.js
      format.html
    end
  end
  
  def create
    @site = Site.new(site_params)
    @result = @site.save
    if @result
      respond_to do |format|
        format.js
        format.html { redirect_to sites_url }
      end
    else
      render :new
    end
  end
  
  def show
    @complete_tasks = @site.tasks.where(completed: true)
  end
  
  def edit
    respond_to do |format|
      format.js
      format.html { redirect_to sites_url }
    end
  end
  
  def update
    if @site.update_attributes(site_params)
      redirect_to sites_path
    else
      render :edit
    end
  end
  
  def destroy
    @site = Site.destroy(params[:id])
    respond_to do |format|
      format.js
      format.html { redirect_to sites_path }
    end
  end
  
  protected
  
  def find_site
    @site = Site.friendly.find(params[:id])
  end
  
  
  def site_params
    params.require(:site).permit(:name, :status, :url, :git, :primary, :primary_site_id, :renewal_date)
  end
  
  
end
