Rails.application.routes.draw do
  root to: 'spots#index'
  get 'maps/index'
  resources :maps, only: [:index]
end
