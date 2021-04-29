Rails.application.routes.draw do
  resources :articles
  resources :comments, only: %i[create destroy]
end
