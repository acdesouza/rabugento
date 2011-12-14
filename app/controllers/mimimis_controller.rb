class MimimisController < ApplicationController
  def mimimis
    render_mimimis_for Twitter.search_by(:mimimi)
  end
  
  def vdms
    render_mimimis_for Twitter.search_by(:vdm)
  end
  
  def affs
    render_mimimis_for Twitter.search_by(:aff)
  end
  
  def fails
    render_mimimis_for Twitter.search_by(:fail)
  end
  
  def porras
    render_mimimis_for Twitter.search_by(:porra)
  end
  
  private
  def render_mimimis_for(collection)
    render :partial => 'tweets', :collection => collection, :as => "tweet"
  end
end
