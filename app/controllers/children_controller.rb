class ChildrenController < ApplicationController
  before_action :authenticate_user
  
  def index
    @children = current_user.children
    render :index 
  end

  def create
    @child = Child.new(child_params)
    @child.user_id = current_user.id
    
    @child.save
    render :show
  end

  def show
    @child = Child.find_by(id: params[:id])
    render :show
  end

  def update
    @child = Child.find_by(id: params[:id])
    @child.update(
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

  def child_params
    params.permit(:name, :dob, :profile_image)
  end
end
