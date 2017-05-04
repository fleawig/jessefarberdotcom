Rails.application.routes.draw do
  devise_for :admins
  resource :admin_dashboard, only: [:show]
  root 'static_pages#home'
  namespace :artist do
    root 'static_pages#home', as: 'home'
    get 'works/2D/:id', to: 'works#show_two_d', as: 'two_d_work'
    get 'works/2D', to: 'works#index_two_d', as: 'two_d_works'
    get 'works/3D/:id', to: 'works#show_three_d', as: 'three_d_work'
    get 'works/3D', to: 'works#index_three_d', as: 'three_d_works'
    get 'books', to: 'book_pages#index', as: 'books'
    get 'audio', to: 'static_pages#audio', as: 'audio_works'
  end
  namespace :admin do
    resources :works
    resources :book_pages
    resources :rnl_issues
    resources :news_items
    get 'books/:book_title', to: 'book_pages#show_book', as: 'show_book'
  end
end


# NOTE TO SELF -- TODO 1ST TODAY -- 
# ARTIST STATIC PAGES CONTROLLER MAYBE SHOULD BE MOVED INTO ARTIST NAMESPACE
# BUT THIS WILL MEAN RE-WRITING SOME OLDER STUFF