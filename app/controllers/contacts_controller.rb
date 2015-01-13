class ContactsController < ApplicationController
  before_action :http_basic_authenticate
  before_action :find_contact, only: %w[show edit update destroy]
  
  def index
    @contacts = Contact.all
  end
  
  def new
    @contact = Contact.new
  end
  
  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      Activity.track(current_user.id, nil, "Added Contact", params[:controller], @contact.id, true)
      redirect_to contacts_path
    else
      redirect_to contacts_path
    end
  end
  
  def show;end
  
  def edit;end
  
  def update
    if @contact.update_attributes(contact_params)
      redirect_to contacts_path
    else
      redirect_to contacts_path
    end
  end
  
  def destroy
    @contact.destroy
    redirect_to contacts_path
  end
  
  private
  
  def contact_params
    params.require(:contact).permit(:first_name, :middle_name, :last_name, :company, :title, :personal_email, :work_email, :cell_phone, :work_phone, :website, :street_address, :city, :state, :zip_code, :country, :linkedin, :twitter, :facebook, :undergraduate_school, :undergraduate_degree, :undergraduate_year, :graduate_school, :graduate_degree, :graduate_year, :birthday, :married, :kids)
  end
  
  def find_contact
    @contact = Contact.find(params[:id])
  end
  
end
