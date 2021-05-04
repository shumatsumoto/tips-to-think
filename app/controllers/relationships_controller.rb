class RelationshipsController < ApplicationController
  def follow
    current_user.follow(params[:id])
    redirect_back fallback_location: root_path, flash: { notice: "フォローしました" }
  end
  
  def unfollow
    current_user.unfollow(params[:id])
    redirect_back fallback_location: root_path, flash: { notice: "フォロー外しました" }
  end
end
