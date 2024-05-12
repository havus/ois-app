Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  namespace :admin do
    # Add dashboard for your models here
    resources :projects
    resources :sub_projects
    resources :sub_project_specifications
    resources :units
    resources :materials
    resources :transactions

    root to: "projects#index" # <--- Root route
  end
end
