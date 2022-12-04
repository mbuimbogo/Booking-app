Rails.application.routes.draw do
  resources :bookings
  resources :reviews, only: [:index, :show, :create, :destroy]
  resources :users
  resources :restaurants, only: [:index, :show, :update]
  patch '/restaurants/:id/like', to: 'restaurants#increment_likes'
  post "/login", to: "sessions#create"
  get "/me", to: "users#show"
  delete "/logout", to: "sessions#destroy"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
