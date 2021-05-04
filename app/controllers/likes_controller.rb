class LikesController < ApplicationController
  def create
    @like = Like.new(user_id: @current_user.id, article_id: params[:article_id])
    @like.save
    redirect_back fallback_location: root_path, flash: { notice: "いいね！しました" }
  end

  def destroy
    @like = Like.find_by(user_id: @current_user.id, article_id: params[:article_id])
    @like.destroy
    redirect_back fallback_location: root_path, flash: { notice: "(Ｔ＿Ｔ)" }
  end
end
