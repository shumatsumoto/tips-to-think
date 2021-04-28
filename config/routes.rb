Rails.application.routes.draw do
  get 'articles', to: 'articles#index'
  get 'articles/new', to: 'articles#new'
end
