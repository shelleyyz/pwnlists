Rails.application.routes.draw do
  get 'lists/new'
  get 'lists/index'
  get 'users/new'
  get 'users/index'
  get 'user/new'
  get 'user/index'
  root :to => 'pages#home'
  resources :users
  resources :lists
  resources :games

  get '/login' => 'session#new' #login form
  post '/login' => 'session#create' #perform a login
  delete '/login' => 'session#destroy' #perform a log out

end
