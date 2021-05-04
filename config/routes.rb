Rails.application.routes.draw do
  post 'likes/:article_id/create', to: 'likes#create', as: 'like_create'
  post 'likes/:article_id/destroy', to: 'likes#destroy', as: 'like_destroy'
  post 'follow/:id', to: 'relationships#follow', as: 'follow'
  post 'unfollow/:id', to: 'relationships#unfollow', as: 'unfollow'
  get 'mypage', to: 'users#me'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  root 'home#index'
  resources :users, only: %i[index new create]
  resources :articles
  resources :comments, only: %i[create destroy]
end
