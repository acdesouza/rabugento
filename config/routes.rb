Rabugento::Application.routes.draw do
  get '/mimimis'  => 'mimimis#mimimis'
  root :to        => 'application#index'
end
