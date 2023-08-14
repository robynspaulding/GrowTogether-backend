class MilestonesController < ApplicationController

  def index
    @milestones = Milestone.all
    render :index 
  end

  def create
    @milestone = Milestone.create(
      image_id: params[:image_id],
      milestone_category: params[:milestone_category],
      title: params[:title],
      description: params[:description],
      date: params[:date],
    )
    render :show
  end

  def show
    @milestone = Milestone.find_by(id: params[:id])
    render :show
  end

  def update
    @milestone = Milestone.find_by(id: params[:id])
    @milestone.update(
      image_id: params[:image_id] || @milestone.image_id,
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

end
