class CreateOrUpdateTweetService
  def initialize(params)
    @params = params
    @tweet_id = params[:id]
    @tweet_params = tweet_params(params)
  end

  def call
    tweet = Tweet.find_or_initialize_by(id: @tweet_id)
    tweet.update!(@tweet_params)

  end

  private

  def tweet_params(params)
    params.permit(:tweet, :tag)

  end
end
