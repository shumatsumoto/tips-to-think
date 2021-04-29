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
    if @article.update(article_params)
      flash[:notice] = "「#{@article.title}」の記事編集しました"
      redirect_to @article
    else
      redirect_back fallback_location: edit_article_url, flash: {
        article: @article,
        error_messages: @article.errors.full_messages
      }
    end
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
