class LikesController < ApplicationController

  def create
    @tweet_like = Like.new(user_id: current_user.id,tweet_id: params[:tweet_id])
    @tweet_like.save
    result = [done: "save",user_id: current_user.id, tweet_id: params[:tweet_id]]
    redirect_to tweet_path(params[:tweet_id])
  end

  def destroy
    @tweet_like = Like.find_by(user_id: current_user.id, tweet_id: params[:tweet_id])
    @tweet_like.destroy
    result = [done: "destroy",user_id: current_user.id, tweet_id:params[:tweet_id]]
    redirect_to tweet_path(params[:tweet_id])
  end  

end


class LikesController < ApplicationController
  before_action :set_post

  def create
    @like = Like.create(user_id: current_user.id, post_id: @post.id)
  end

  def destroy
    @like = current_user.likes.find_by(post_id: @post.id)
    @like.destroy
  end

  private
  def set_post
    @post = Post.find(params[:post_id])
  end
end
