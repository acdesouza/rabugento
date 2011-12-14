class MimimisController < ApplicationController
  def mimimis
    render partial: 'mimimis', collection: Twitter.mimimis, as: 'mimimi'
  end
  
  def vdms
    render partial: 'vdms', collection: Twitter.vdms, as: 'vdm'
  end
  
  def affs
    render partial: 'affs', collection: Twitter.affs, as: 'aff'
  end
  
  def fails
    render partial: 'fails', collection: Twitter.fails, as: 'fail'
  end
  
  def porras
    render partial: 'porras', collection: Twitter.porras, as: 'porra'
  end
end
