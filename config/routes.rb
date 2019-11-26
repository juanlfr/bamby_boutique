Rails.application.routes.draw do
  root to: "items#index"
  devise_for :users
  resources :users, only: [:show]
  resources :items
  resources :line_items
  get 'carts/:id' => "carts#show", as: "cart"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
