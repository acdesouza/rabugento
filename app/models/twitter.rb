require 'json'
require 'net/http'

class Twitter

  def self.mimimis
    base_url = "http://search.twitter.com/search.json?locale=pt&lang=pt&rpp=100&q="
    url = "#{base_url}\#mimimi"
    puts url  
    resp = Net::HTTP.get_response(URI.parse(URI.encode(url)))
    data = resp.body
    result = JSON.parse(data)
    result_as_tweets = result['results'].collect do |hash_tweet|
      Tweet.new hash_tweet
    end
  end
  
  def self.affs  
    base_url = "http://search.twitter.com/search.json?locale=pt&lang=pt&rpp=100&q="
    url = "#{base_url}\#aff"
    resp = Net::HTTP.get_response(URI.parse(URI.encode(url)))
    data = resp.body
    result = JSON.parse(data)

    result_as_tweets = result['results'].collect do |hash_tweet|
      Tweet.new hash_tweet
    end
  end
  
  def self.fails
    base_url = "http://search.twitter.com/search.json?locale=pt&lang=pt&rpp=100&q="
    url = "#{base_url}\#fail"
    resp = Net::HTTP.get_response(URI.parse(URI.encode(url)))
    data = resp.body
    result = JSON.parse(data)
    result_as_tweets = result['results'].collect do |hash_tweet|
      Tweet.new hash_tweet
    end
  end
  
  def self.vdms
    base_url = "http://search.twitter.com/search.json?locale=pt&lang=pt&rpp=100&q="
    url = "#{base_url}\#vdm"
    resp = Net::HTTP.get_response(URI.parse(URI.encode(url)))
    data = resp.body
    result = JSON.parse(data)

    result_as_tweets = result['results'].collect do |hash_tweet|
      Tweet.new hash_tweet
    end
  end
  def self.porras
    base_url = "http://search.twitter.com/search.json?locale=pt&lang=pt&rpp=100&q="
    url = "#{base_url}\#porra"
    resp = Net::HTTP.get_response(URI.parse(URI.encode(url)))
    data = resp.body
    result = JSON.parse(data)

    result_as_tweets = result['results'].collect do |hash_tweet|
      Tweet.new hash_tweet
    end
  end
end
