class MimimisController < ApplicationController
  def mimimis
    render_mimimis_for Twitter.mimimis
  end
  
  def vdms
    render_mimimis_for Twitter.vdms
  end
  
  def affs
    render_mimimis_for Twitter.affs
  end
  
  def fails
    render_mimimis_for Twitter.fails
  end
  
  def porras
    render_mimimis_for Twitter.porras
  end
  
  private
  def render_mimimis_for(collection)
    render :partial => 'tweets', :collection => collection, :as => "tweet"
  end
end
