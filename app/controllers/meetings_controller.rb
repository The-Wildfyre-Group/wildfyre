class MeetingsController < ApplicationController
  before_action :find_meeting, except: [:index, :new, :create]
  
  def index
    @meetings = Meeting.all
  end
  
  def new
    @meeting = Meeting.new
  end
  
  def create
    @meeting = Meeting.new(meeting_params)
    if @meeting.save
      redirect_to meetings_path
    else
      render :new
    end
  end
  
  def show
    @administrative = MeetingItem.where(meeting_id: @meeting.id, category: "Administrative")
    @things_to_discuss = MeetingItem.where(meeting_id: @meeting.id, category: "Things To Discuss")
    @upcoming_events = MeetingItem.where(meeting_id: @meeting.id, category: "Upcoming Events")
    @improvements = MeetingItem.where(meeting_id: @meeting.id, category: "Improvements")
  end
  
  def edit
    
  end
  
  def update
    if @meeting.update_attributes(meeting_params)
      redirect_to meetings_path
    else
      render :edit
    end
  end
  
  def destroy
    @meeting.destroy
    redirect_to meetings_path
  end 
  
  protected
  
  def find_meeting
    @meeting = Meeting.friendly.find(params[:id])
  end
  
  def meeting_params
    params.require(:meeting).permit(:as_of, :name, :category, :slug, meeting_items_attributes: [:id, :_destroy, :item, :category, :user_id])
  end
end
