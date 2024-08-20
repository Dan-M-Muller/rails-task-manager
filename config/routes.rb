Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  get "tasks" => "tasks#index", as: :all_tasks
  get "tasks/new" => "tasks#new", as: :create_task
  post "tasks" => "tasks#create"
  get "tasks/:id" => "tasks#show", as: :task
  delete "tasks/:id" => "tasks#destroy"

  # Defines the root path route ("/")
  root "tasks#index"
end
