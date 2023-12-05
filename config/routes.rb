Rails.application.routes.draw do
  devise_for :users

  root to: "pages#home"

  get 'my_profile', to: 'users#show'
  get 'edit_my_profile', to: 'users#edit'
  patch 'update_my_profile', to: 'users#update'

  resources :categories, only: [:index, :show]
  resources :users
  resources :favorites, only: [:index]
  resources :events do
    resources :favorites, only: [:create, :destroy]
    resources :registrations, only: [:index, :show, :new, :create] do
      member do
        get :confirmation
        patch 'accept'
        patch 'reject'
      end
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
