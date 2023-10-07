class FavoritesController < ApplicationController

  def index
    @favorites = current_user.favorites
    render :index 
  end

  def create
    @favorite = Favorite.create(item_params)
    @favorite.user_id = current_user.id
    
    @favorite.save
    render :show
  end

  def destroy
    @favorites = Favorite.find_by(id: params[:id])
    @favorites.destroy
    render json: { message: "item successfully deleted from favorites" }
  end

  def item_params
    params.permit(:title, :link, :description, :thumbnail)
  end

end
