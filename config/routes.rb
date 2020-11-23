Rails.application.routes.draw do
  devise_for :users
  get 'olives/index'
  root to: "olives#index"
  resources :olives 
  get 'tweets/index'
  resources :tweets 
  resources :users, only: :show
end

