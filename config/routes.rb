Rails.application.routes.draw do
  # resources :transactions
  # resources :watches
  # resources :carts
  # resources :users


  get "/watches", to: "watches#index"
  get "/keep_logged_in", to: "users#keep_logged_in"
  post "/login", to: "users#login"

  post "/users", to: "users#create"
  
  get "/users/:id", to: "users#show"



  post "/transactions", to: "transactions#create"
  patch "/carts/:id/transform", to: "carts#transform"

# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
