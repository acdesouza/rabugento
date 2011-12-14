class Tweet
  def initialize(hash)
    @from_hash = hash
  end

  def text
    @from_hash['text']
  end
  def profile_image_url
    @from_hash['profile_image_url']
  end
  def from_user
    @from_hash['from_user']
  end
end
