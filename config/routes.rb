Rails.application.routes.draw do
  devise_for :users
  root to: "olives#index"
  resources :olives, only: :index
  get 'tweets/index'
  resources :tweets do
    resources :comments, only: :create
  end
  resources :users, only: :show
end

