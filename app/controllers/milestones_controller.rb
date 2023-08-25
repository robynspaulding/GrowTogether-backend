class MilestonesController < ApplicationController

  def index
    @milestones = Milestone.all
    render :index 
  end

  def create
    @milestone = Milestone.create(milestone_params)
    render :show
  end

  def show
    @milestone = Milestone.find_by(id: params[:id])
    render :show
  end

  def update
    @milestone = Milestone.find_by(id: params[:id])
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
    @milestone = Milestone.find_by(id: params[:id])
    @milestone.destroy
    render json: { message: "Milestone deleted successfully" }
  end

  def milestone_params
    params.permit(:child_id, :milestone_category, :title, :description, :date)
  end

end
