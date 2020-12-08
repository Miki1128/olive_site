Rails.application.routes.draw do
  devise_for :users
  root to: "olives#index"
  resources :olives, only: :index
  get 'tweets/index'
  resources :tweets do
    resources :comments, only: :create
    resource :likes, only: [:create, :destroy]
  end
  resources :users, only: :show
  resources :maps, only: :index
  resources :contacts, only: [:index, :create]
end

