Rabugento::Application.routes.draw do
  get '/mimimis'  => 'mimimis#mimimis'
  get '/vdms'  => 'mimimis#vdms'
  get '/fails'  => 'mimimis#fails'
  get '/porras'  => 'mimimis#porras'
  get '/affs'  => 'mimimis#affs'
  root :to        => 'application#index'
end
