Rails.application.routes.draw do
  post 'likes/:article_id/create', to: 'likes#create', as: 'like_create'
  post 'likes/:article_id/destroy', to: 'likes#destroy', as: 'like_destroy'
  get 'mypage', to: 'users#me'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  root 'home#index'
  resources :users, only: %i[new create]
  resources :articles
  resources :comments, only: %i[create destroy]
end
