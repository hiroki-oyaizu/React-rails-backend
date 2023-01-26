class Api::V1::PostsController < ApplicationController
  def index
    posts = Post.all
    
    render json: posts
  end

  def create
    Post.create(post_params)
  end

  def show
    post = Post.find(params[:id])
    num = post.price_count
    render json: { "post" => post ,
      "num" => num,
    }
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
  end

  def update
    post = Post.find(params[:id])
    post.update(post_params)
  end

  def price_count
    purchases.sum { |purchase| purchase.price}
  end

  private

  def post_params
    params.require(:post).permit(:title, :text, :image)
  end

end
