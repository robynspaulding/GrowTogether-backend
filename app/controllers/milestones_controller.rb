class MilestonesController < ApplicationController

  before_action :milestone, only:[:show, :update, :destroy]

  def index
    @milestones = Milestone.all
    render :index 
  end

  def create
    @milestone = Milestone.create(milestone_params)
    render :show
  end

  def show
    render :show
  end

  def update
    @milestone.update(
      child_id: params[:child_id] || @milestone.child_id,
      milestone_category: params[:milestone_category] || @milestone.milestone_category,
      title: params[:title] || @milestone.title,
      description: params[:description] || @milestone.description,
      date: params[:date] || @milestone.date,
    )
    render :show
  end

  def destroy
    @milestone.destroy
    render json: { message: "Milestone deleted successfully" }
  end

  def milestone_params
    params.permit(:child_id, :milestone_category, :title, :description, :date)
  end

  private
    def milestone
      @milestone ||= Milestone.find_by!(id: params.require(:id))
    end

end
