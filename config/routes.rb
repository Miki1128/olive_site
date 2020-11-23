Rails.application.routes.draw do
  devise_for :users
  get 'olives/index'
  root to: "olives#index"
  resources :olives do
  end
  get 'tweets/index'
  resources :users, only: :show 
end

