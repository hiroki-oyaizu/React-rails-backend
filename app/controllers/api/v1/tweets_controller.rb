class Api::V1::TweetsController < ApplicationController

  def index
    tweets = Tweet.all
    render json: tweets
  end

  def create
    CreateOrUpdateTweetService.new(params).call
    head :no_content
  end

  def update
    CreateOrUpdateTweetService.new(params).call
    head :no_content
  end

  def show
    tweet = Tweet.find(params[:id])
    render json: tweet, status: :ok
  end

end
