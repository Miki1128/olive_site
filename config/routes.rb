Rails.application.routes.draw do
  devise_for :users
  resources :olives, only: :index
end
