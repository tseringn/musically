Rails.application.routes.draw do

  get 'welcome', to: 'sessions#welcome'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  
  resources :plays
  resources :song_playlists
  resources :playlists
  resources :songs
  resources :users
  get 'authorized', to: 'sessions#page_requires_login'
  post '/songs/:id', to: 'songs#like'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
