Rails.application.routes.draw do
  devise_for :admins
  root 'static_pages#home'
  get 'artist', to: 'artist_static_pages#home', as: 'artist_home'
end
