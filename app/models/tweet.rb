class Tweet
  def initialize(hash)
    @from_hash = hash
  end

  def text
    @from_hash['text']
  end
end
