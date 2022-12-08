Rails.application.routes.draw do
  resources :bookings, only: [:index,:create]
  resources :reviews, only: [:index, :show, :create, :destroy]
  resources :users
  resources :restaurants, only: [:index, :show, :update]
  patch '/restaurants/:id/like', to: 'restaurants#increment_likes'
  post "/login", to: "sessions#create"
  post "/login", to: "users#create"
  get "/me", to: "sessions#show"
  delete "/logout", to: "sessions#destroy"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
