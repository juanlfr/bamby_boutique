Rails.application.routes.draw do
  root to: "items#index"
  devise_for :users
  resources :carts
  resources :users, only: [:show]
  resources :items
  resources :line_items
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
