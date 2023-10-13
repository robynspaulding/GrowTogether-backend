class RemindersController < ApplicationController
  before_action :authenticate_user
  before_action :reminder, only:[:show, :update, :destroy]
  
  def index
    @reminders = current_user.reminders
    render :index 
  end

  def create
    @reminder = Reminder.new(reminder_params)
    @reminder.user_id = current_user.id
    
    @reminder.save
    render :show
  end

  def show
    render :show
  end

  def update
    @reminder.update(
      child_name: params[:child_name] || @reminder.child_name,
      category: params[:category] || @reminder.category,
      description: params[:description] || @reminder.description,
      notes: params[:notes] || @reminder.notes,
      date: params[:date] || @reminder.date,
    )
    render :show
  end

  def destroy
    @reminder.destroy
    render json: { message: "reminder deleted successfully" }
  end

  def reminder_params
    params.permit(:child_name, :category, :description, :notes, :date)
  end

  private
    def reminder
      @reminder ||= Reminder.find_by!(id: params.require(:id))
    end

end
