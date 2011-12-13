#-*- coding: utf-8 -*-
require 'test_helper'

class TwitterTest < ActiveSupport::TestCase
  test 'should read #mimimi\'s from twitter' do
    twitter = Twitter.new
    mimimis = twitter.mimimis

    refute_nil mimimis
    mimimis.each do |tweet|
      assert tweet.text.downcase.include? 'mimimi'
    end
  end
end
