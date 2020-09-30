Rails.application.routes.draw do
  devise_for :users
  resources :users
  root to: 'spots#index'
  get 'maps/index'
  resources :maps, only: [:index]
end
