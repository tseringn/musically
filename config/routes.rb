Rails.application.routes.draw do
  resources :plays
  resources :song_playlists
  resources :playlists
  resources :songs
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
