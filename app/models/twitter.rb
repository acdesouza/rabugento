require 'json'
require 'net/http'

class Twitter
  def mimimis
    base_url = "http://search.twitter.com/search.json?q="
    url = "#{base_url}\#mimimi"

    resp = Net::HTTP.get_response(URI.parse(URI.encode(url)))
    data = resp.body
    result = JSON.parse(data)

    result_as_tweets = result['results'].collect do |hash_tweet|
      Tweet.new hash_tweet
    end
  end
end
