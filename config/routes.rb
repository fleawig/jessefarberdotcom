Rails.application.routes.draw do
  devise_for :admins
  resource :admin_dashboard, only: [:show]
  root 'static_pages#home'
  get 'artist', to: 'artist_static_pages#home', as: 'artist_home'
  namespace :admin do
    resources :works
    resources :book_pages
    resources :rnl_issues
  end
end
