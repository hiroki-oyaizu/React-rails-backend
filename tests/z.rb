class Z
  def test
    CreateOrUpdateTweetService.new("hirohiro").call
  end

end
a = Z.new
puts a.test
