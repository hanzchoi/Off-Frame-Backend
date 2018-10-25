Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :products #, only: [:index]
      resources :images #, only: [:index]
      resources :shopping_carts
      resources :users
      post "/login", to: "sessions#login"
      get "/persist", to: "sessions#persist"
    end
  end
end
