Rails.application.routes.draw do
  devise_for :users
  resources :users
  root to: 'maps#index'
  get 'maps/index'
  get 'spots/index'
  resources :maps, only: [:index]
end
