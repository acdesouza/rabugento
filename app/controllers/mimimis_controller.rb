class MimimisController < ApplicationController
  def mimimis
    render partial: 'mimimis', locals: {mimimis: Twitter.mimimis}
  end
end
