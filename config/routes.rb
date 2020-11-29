Rails.application.routes.draw do
  devise_for :users
  root to: "olives#index"
  resources :olives, only: :index
  get 'tweets/index'
  resources :tweets do
    resources :comments, only: :create
    post "likes/:tweet_id/create", to: "likes#create", constraints: {tweet_id: /\d+/}, as: :likes_create
    post "likes/:tweet_id/delete", to: "likes#delete", constraints: {tweet_id: /\d+/}, as: :likes_delete
  end
  resources :users, only: :show
  resources :maps, only: :index
end

