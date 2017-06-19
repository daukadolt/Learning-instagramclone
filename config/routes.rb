Rails.application.routes.draw do
  root "users#index"
  #match "/about", to: "static_pages#about", via: :get
  get "about" => "static_pages#about"
  get "signup" => "users#new"

  resources :users
end
