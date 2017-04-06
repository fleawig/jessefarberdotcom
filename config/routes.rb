Rails.application.routes.draw do
  root 'static_pages#home'
  get 'artist', to: 'artist#home', as: 'artist_home'
end
