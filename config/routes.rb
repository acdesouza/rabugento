Rabugento::Application.routes.draw do
  get '/mimimis'  => 'mimimis#mimimis'
  get '/vdms'  => 'mimimis#vdms'
  get '/fails'  => 'mimimis#fails'
  get '/porras'  => 'mimimis#porras'
  get '/affs'  => 'mimimis#affs'
  
  get '/sobre' => 'application#about', :as => "about"
  
  root :to        => 'application#index'
end
