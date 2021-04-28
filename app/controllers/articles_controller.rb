class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    Article.create(article_params)
  end

  private
    def article_params
      params.require(:article).permit(:name, :title, :body)
    end
end
