Rails.application.routes.draw do
  
  # resources :watches
  # resources :carts
  # resources :users
  # resources :transactions

  get "/watches/:id", to: "watches#show"
  get "/watches", to: "watches#index"
  get "/keep_logged_in", to: "users#keep_logged_in"
  post "/login", to: "users#login"

  post "/transactions", to: "transactions#create" 
  delete "/transactions/:id", to: "transactions#destroy"

  post "/users", to: "users#create"
  get "/users/:id", to: "users#show"

  patch "/carts/:id/transform", to: "carts#transform"

  post "/charges", to: "charges#create"
  get "/charges", to: "charges#index"

# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
