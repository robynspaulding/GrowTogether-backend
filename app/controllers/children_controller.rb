class ChildrenController < ApplicationController

  def index
    @children = Child.all
    render :index 
  end

  def create
    @child = Child.create(
      user_id: params[:user_id],
      milestone_category: params[:milestone_category],
      name: params[:name],
      dob: params[:dob],
      profile_image: params[:profile_image],
    )
    render :show
  end
end
