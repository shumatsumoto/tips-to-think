class ArticlesController < ApplicationController
  before_action :set_target_article, only: %i[show edit update destroy]

  def index
    @articles = Article.page(params[:page])
  end

  def new
    @article = Article.new(flash[:article])
  end

  def create
    article = Article.new(article_params)
    if article.save
      flash[:notice] = "「#{article.title}」の記事作成しました"
      redirect_to article
    else
      redirect_to new_article_path, flash: {
        article: article,
        error_messages: article.errors.full_messages
      }
    end
  end

  def show
    @comment = Comment.new(article_id: @article.id)
  end

  def edit
  end

  def update
    @article.update(article_params)
    redirect_to @article
  end

  def destroy
    @article.delete
    redirect_to articles_path, flash: { notice: "「#{@article.title}」の記事削除しました" }
  end

  private
    def article_params
      params.require(:article).permit(:name, :title, :body)
    end

    def set_target_article
      @article = Article.find(params[:id])
    end
end
