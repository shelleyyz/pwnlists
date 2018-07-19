Rails.application.routes.draw do

  root :to => 'session#new'

  resources :users
  resources :lists
  resources :games
  resources :password_resets

  get '/login' => 'session#new' #login form
  post '/login' => 'session#create' #perform a login
  delete '/login' => 'session#destroy' #perform a log out

end
