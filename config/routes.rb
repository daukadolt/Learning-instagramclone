Rails.application.routes.draw do
  root "posts#index"
  #root "static_pages#home"
  #match "/about", to: "static_pages#about", via: :get
  get "about" => "static_pages#about"
  get "signup" => "users#new"
  get "/signin", to: "sessions#new"
  post "/signin", to: "sessions#create"
  #get "/signout", to "session#destroy"
  delete "/signout", to: "sessions#destroy"
  delete "/relationships", to: "relationships#destroy"

  resources :users
  resources :posts
  resources :sessions, only: [:new, :destroy, :create]
  resources :relationships, only: [:create]
end
