class ChildrenController < ApplicationController
  before_action :authenticate_user
  
  def index
    @children = current_user.children
    render :index 
  end

  def create
    @child = Child.create(
      user_id: current_user.id,
      name: params[:name],
      dob: params[:dob],
      profile_image: params[:profile_image],
    )
    render :show
  end

  def show
    @child = Child.find_by(id: params[:id])
    render :show
  end

  def update
    @child = Child.find_by(id: params[:id])
    @child.update(
      # user_id: params[:user_id] || @child.user_id,
      name: params[:name] || @child.name,
      dob: params[:dob] || @child.dob,
      profile_image: params[:profile_image] || @child.profile_image,
    )
    render :show
  end

  def destroy
    @child = Child.find_by(id: params[:id])
    @child.destroy
    render json: { message: "Child deleted successfully" }
  end
end
