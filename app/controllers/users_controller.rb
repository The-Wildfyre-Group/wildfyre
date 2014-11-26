class UsersController < ApplicationController
  before_action :find_user, except: [:new, :create]

  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    @result = @user.save
    if @user.save
      Profile.create(user_id: @user.id, skills: [])
      cookies.permanent[:authentication_token] = @user.authentication_token 
      redirect_to edit_user_path(@user)
    else
      flash[:error] = @user.errors.full_messages
      render 'new'
    end
  end
  
  def show
    @user_profile_picture = @user.user_profile_pictures.last
  end
  
  def edit
    @profile = @user.build_profile if @user.profile.nil?
    @profile = @user.profile
    @user_profile_picture = @user.user_profile_pictures.build if @user.user_profile_pictures.empty?
    @user_profile_picture = @user.user_profile_pictures.last
  end
  
  def update
    if params[:user][:password].blank?
      @profile = @user.profile
      if @user.update_attributes(user_params)
        flash[:success] = "Updated successfully."
        redirect_to @user
      else
        render 'edit'
      end
    else
      if @user == @user.authenticate(params[:user][:current_password])
        @profile = @user.profile
        @user.update_attributes(user_params)
        flash[:success] = "Password Changed."
        redirect_to @user
      else
        flash[:error] = "Current Password is not a match."
        render 'edit'
      end
    end 
  end
  
  def destroy
    @user.destroy
    redirect_to root_path
  end
  
  protected
  
  def find_user
    @user = User.friendly.find(params[:id])
  end
  
  def user_params
    params.require(:user).permit(:first_name, :middle_name, :last_name, :email, :password, :password_confirmation, :current_password, {profile_attributes: [:id, :user_id, :instagram, :twitter, :facebook, :linkedin, :undergraduate_school, :graduate_school, :doctorate_school, :undergraduate_major, :graduate_major, :doctorate_major, :undergraduate_year, :graduate_year, :doctorate_year, :undergraduate_degree, :graduate_degree, :doctorate_degree, :hometown, :certifications, :company, :title, :website_1, :website_2, :industries, :interests, :skills, :city, :state, :zipcode, :bio, :personal_email, :work_email, :mobile_phone_number, :work_phone_number, :home_phone_number, :street_address, :country, :birthday, :married, :anniversary, :kids, :number_of_kids]},  {user_profile_pictures_attributes: [:id, :user_id, :photo]})  
  end
end
