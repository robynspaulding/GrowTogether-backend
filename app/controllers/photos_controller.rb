class PhotosController < ApplicationController
  before_action :authenticate_user
  before_action :photo, only:[:show, :update, :destroy]
  
  def index
    @user = current_user
  
    if @user
      @photos = @user.photos
      render json: @photos
    else
      render json: { error: "User not found" }
    end
  end

  def index_by_child
    @child = Child.find_by(id: params[:child_id])

    if @child && @child.user_id == current_user.id #user can only see their childrens photos
      render json: @child.photos
    else
      render json: { error: "child not found"}
    end  
  end

  def index_by_milestone
    @milestone = Milestone.find_by(id: params[:milestone_id])

    if @milestone #don't need current user check since user only access milestones inherited from the child
      render json: @milestone.photos
    else
      render json: { error: "milestone not found"}
    end  
  end

  def create
    @photo = Photo.new(photo_params)
    @photo.user_id = current_user.id
    
    if @photo.save
      render json: @photo, status: :created
    else
      render json: @photo.errors, status: :unprocessable_entity
    end
  end
  

  def show
    render :show
  end

  def update
    @photo.update(
      child_id: params[:child_id] || @photo.child_id,
      milestone_id: params[:milestone_id] || @photo.milestone_id,
      image: params[:image] || @photo.image,
      description: params[:description] || @photo.description,
      date: params[:date] || @photo.date,
    )
    render :show
  end

  def destroy
    @photo.destroy
    render json: { message: "photo deleted successfully" }
  end

  def photo_params
    params.require(:photo).permit(:image, :description, :date, :user_id, :child_id, :milestone_id)
  end
  

  private
    def photo
      @photo ||= Photo.find_by!(id: params.require(:id))
    end

end
