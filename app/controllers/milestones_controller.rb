class MilestonesController < ApplicationController

  def index
    @child = Child.find_by(id: params[:child_id])

    if @child
      render json: @child.milestones
    else
      render json: { error: "child not found"}
    end
  end

  def create
    @milestone = Milestone.create(
      child_id: params[:child_id],
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

end
