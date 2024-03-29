class ArticlesController < ApplicationController
  before_action :set_target_article, only: %i[show edit update destroy]
  before_action :ensure_current_user, only: [:edit, :update, :destroy]

  def index
    @articles = params[:tag_id].present? ? Tag.find(params[:tag_id]).articles : Article.all
    @articles = @articles.page(params[:page])
  end

  def new
    @article = Article.new(flash[:article])
  end

  def create
    article = Article.new(article_params)
    article.name = current_user.name
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
    redirect_to root_path unless current_user
    @comment = Comment.new(article_id: @article.id)
    @likes_count = Like.where(article_id: @article.id).count
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
    @article.destroy
    redirect_to articles_path, flash: { notice: "「#{@article.title}」の記事削除しました" }
  end

  private
    def article_params
      params.require(:article).permit(:name, :title, :body, tag_ids: []).merge(user_id: current_user.id)
    end

    def set_target_article
      @article = Article.find(params[:id])
    end

    def ensure_current_user
      @article = Article.find(params[:id])
      if @article.name != current_user.name
        redirect_to articles_path, flash: { notice: "権限がありません" }
      end
    end
end
