Rails.application.routes.draw do
  match '/404', to: 'errors#not_found', via: :all
  match '/500', to: 'errors#internal_server_error', via: :all

  devise_for :admins
  resource :admin_dashboard, only: [:show]
  root 'artist/works#index_two_d'
  get 'developer', to: 'static_pages#developer_portfolio', as: 'developer_portfolio'
  # Root inside artist namespace displays artist partials and nav with blank
  # content, since artist controller home action has no content.
  get 'works/2D/:id', to: 'artist/works#show_two_d', as: 'two_d_work'
  get 'works/2D', to: 'artist/works#index_two_d', as: 'two_d_works'
  get 'works/3D/:id', to: 'artist/works#show_three_d', as: 'three_d_work'
  get 'works/3D', to: 'artist/works#index_three_d', as: 'three_d_works'
  get 'books', to: 'artist/book_pages#index', as: 'books'
  get 'audio', to: 'artist/static_pages#audio', as: 'audio_works'
  get 'RNL', to: 'artist/rnl_issues#index', as: 'rnl'
  get 'CV', to: 'artist/static_pages#cv', as: 'cv'
  get 'news', to: 'artist/news_items#index', as: 'news'
  # end
  namespace :admin do
    resources :works
    resources :book_pages
    resources :rnl_issues
    resources :news_items
    get 'books/:book_title', to: 'book_pages#show_book', as: 'show_book'
  end
end
