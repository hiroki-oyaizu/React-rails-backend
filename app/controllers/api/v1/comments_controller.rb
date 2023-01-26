class Api::V1::CommentsController < ApplicationController
  def index
    post = Post.find(params[:post_id])
    comment = post.comments.all
    render json: comment
  end

  def create

    post = Post.find(params[:post_id])
    comment = post.comments.find_or_initialize_by(id: params[:id])
    comment.update(comment_params)

  end

  def comment_params
    params.permit(:comment, :post_id, :id)
  end
end

# 127.0.0.1
