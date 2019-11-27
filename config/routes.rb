Rails.application.routes.draw do
  root to: "items#index"
  devise_for :users, path: 'devise'
  resources :users, only: [:show]
  resources :items

  get 'carts/:id' => "carts#show", as: "cart"
	post 'line_items' => "line_items#create"
	get 'line_items/:id' => "line_items#show", as: "line_item"
	delete 'line_items/:id' => "line_items#destroy"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
