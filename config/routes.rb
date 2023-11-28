Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  get 'my_profile', to: 'users#show' # change the path for the user profile
  get 'edit_my_profile', to: 'users#edit' # change the path for the user profile
  patch 'update_my_profile', to: 'users#update' # change the path for the user profile
  resources :users, only: [:new, :create]
    resources :events do
      resources :registrations, only: [:index, :show, :new, :create] do
        member do
          post 'accept'
          post 'decline'
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
