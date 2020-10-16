Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :maps, only: [:index]
  resources :spots do
    resource :wants, only: [:create, :destroy]
  end
  root to: 'maps#index'
  get 'maps/index'
  get 'spots/index'
  
end
