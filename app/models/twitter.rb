require 'json'
require 'net/http'

class Twitter
  def self.search_by(term)
    base_url = "http://search.twitter.com/search.json?locale=pt&lang=pt&rpp=100&q="
    url = "#{base_url}\##{term}"
    resp = Net::HTTP.get_response(URI.parse(URI.encode(url)))
    data = resp.body
    result = JSON.parse(data)

    result['results'].collect do |hash_tweet|
      Tweet.new hash_tweet
    end
  end
end
