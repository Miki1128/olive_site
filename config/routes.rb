Rails.application.routes.draw do
  get 'olives/index'
  devise_for :users
  root to: "olives#index"
  resources :olives, only: [:index,:new]
end