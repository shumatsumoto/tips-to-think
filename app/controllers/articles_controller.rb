class ArticlesController < ApplicationController
  before_action :set_target_article, only: %i[show edit update destroy]

  def index
    @articles = Article.page(params[:page])
  end

  def new
    @article = Article.new
  end

  def create
    article = Article.create(article_params)
    redirect_to article
  end

  def show
  end

  def edit
  end

  def update
    @article.update(article_params)
    redirect_to @article
  end

  def destroy
    @article.delete
    redirect_to articles_path
  end

  private
    def article_params
      params.require(:article).permit(:name, :title, :body)
    end

    def set_target_article
      @article = Article.find(params[:id])
    end
end
