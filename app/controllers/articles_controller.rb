class ArticlesController < ApplicationController
  # GET /articles
  # GET /articles.json
  def index
    @articles = Article.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @articles }
    end
  end

  # GET /articles/1
  # GET /articles/1.json
  def show
    @article = Article.find(params[:id])

    redirect_to @article, status: :moved_permanently if request.path != article_path(@article)

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @article }
    end
  end
end
