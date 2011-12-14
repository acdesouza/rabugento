require 'json'
require 'net/http'

class Twitter

  def self.mimimis
    self.search_by(:mimimi)
  end
  
  def self.affs
    self.search_by(:aff)
  end
  
  def self.fails
    self.search_by(:fail)
  end
  
  def self.vdms
    self.search_by(:vdm)
  end

  def self.porras
    self.search_by(:porra)
  end
  
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
