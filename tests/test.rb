class CreateOrUpdateTweetService
  def initialize(name)
    @name = name
  end

  def call
    @name
  end

end
# puts  CreateOrUpdateTweetService.new("hirohiro").call
