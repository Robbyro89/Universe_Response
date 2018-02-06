Rails.application.routes.draw do

  resources :users
  resources :sessions

  root "static_pages#home"

  get '/secret',    to: 'static_pages#secret'
  get '/about',     to: 'static_pages#about'
  get '/contact',   to: 'static_pages#about'

  get '/index',     to: 'users#index'
  get '/signup',    to: 'users#new'

  get '/login',     to: 'sessions#new'
  post '/login',    to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

end
