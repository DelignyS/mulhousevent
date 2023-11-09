Rails.application.routes.draw do
  get 'events/new'
  get 'events/create'
  root 'static_pages#index'
  get 'static_pages/index'
  get 'static_pages/secret'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  resources :events, only: [:new, :create]
  resources :events
  resources :users, only: [:show, :update]
  # Defines the root path route ("/")
  # root "posts#index"
end
