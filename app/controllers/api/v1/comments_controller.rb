class Api::V1::CommentsController < ApplicationController

  def create
    render json: Comment.create(comment_params)
  end

  def index
    post = Post.find(params[:post_id])
    @comments = post.comments.paginate(:page => params[:page], :per_page => 15)
    render json: @comments
  end

  private

  def comment_params
    params.require(:comment).permit(:text, :post_id, :user_id)
  end
end
