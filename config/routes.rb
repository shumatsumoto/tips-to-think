Rails.application.routes.draw do
  root 'home#index'
  resources :articles
  resources :comments, only: %i[create destroy]
end
