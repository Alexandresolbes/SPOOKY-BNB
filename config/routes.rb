Rails.application.routes.draw do
  devise_for :users
  root to: "listings#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :listings do
    resources :bookings, only: [:new, :create, :edit, :update] do
      resources :reviews, only: [:new, :create]
    end
  end
  resources :bookings, only: [:destroy]

  get "/bookings", to: "pages#bookings_as_guest"
  get "/bookings_host", to: "pages#bookings_as_host"
end
