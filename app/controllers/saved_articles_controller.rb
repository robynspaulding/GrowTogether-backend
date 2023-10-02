class SavedArticlesController < ApplicationController

  def index
    @saved_articles = current_user.saved_articles
    render :index 
  end

  def create
    @saved_article = SavedArticle.create(article_params)
    @saved_article.user_id = current_user.id
    
    @saved_article.save
    render :show
  end

  def destroy
    @saved_articles = SavedArticle.find_by(id: params[:id])
    @saved_articles.destroy
    render json: { message: "Article successfully deleted from favorites" }
  end

  def article_params
    params.permit(:title, :url)
  end

end
