class MimimisController < ApplicationController
  def mimimis
    render partial: 'mimimis', collection: Twitter.mimimis, as: 'mimimi'
  end
end
