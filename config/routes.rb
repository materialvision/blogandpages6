Rails.application.routes.draw do

  resources :users
  resources :posts
  resources :pages
  resources :sessions, only: [:new, :create, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#index'

  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'




end
