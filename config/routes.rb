Rails.application.routes.draw do
  root "static_pages#home"
  #match "/about", to: "static_pages#about", via: :get
  get "/about", to: "static_pages#about"
  get "/signup", to: "users#new"

  resources :users
end
