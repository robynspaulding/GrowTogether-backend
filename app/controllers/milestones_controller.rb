class MilestonesController < ApplicationController

  before_action :milestone, only:[:show, :update, :destroy]

  def index
    @child = Child.find_by(id: params[:child_id])

    if @child
      render json: @child.milestones
    else
      render json: { error: "child not found"}
    end
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
