Rails.application.routes.draw do
  root to: "items#index"
  devise_for :users, path: 'devise'
  resources :users, only: [:show]
  resources :items
  resources :carts
  resources :line_items
  resources :orders
  resources :order_items
  resources :charges
  
  #routes for adding and reducing quantity
  post 'line_items/:id/add' => "line_items#add_quantity", as: "line_item_add"
  post 'line_items/:id/reduce' => "line_items#reduce_quantity", as: "line_item_reduce"

end
