Rails.application.routes.draw do
  root to: "items#index"
  devise_for :users
  resources :users, only: [:show]
  resources :items
  resources :carts
  resources :line_items
  resources :orders
  resources :order_items
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
