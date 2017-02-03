class Api::V1::PostsController < ApplicationController

  def comments
    post = Post.find(params[:post_id])
    @comments = post.comments.paginate(:page => params[:page], :per_page => 15)
    render json: @comments
  end

end
