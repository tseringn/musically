Rails.application.routes.draw do

  get 'welcome', to: 'sessions#welcome'
  post '/sessions', to: 'sessions#create', as: 'login'
  get '/sessions/new', to: 'sessions#new', as: 'new_login'
  get '/sessions/logout', to: 'sessions#logout', as: 'logout'
  
  
  resources :plays
  resources :song_playlists
  resources :playlists
  resources :songs
  resources :users
  get 'authorized', to: 'sessions#page_requires_login'
  post '/songs/:id', to: 'songs#like'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
