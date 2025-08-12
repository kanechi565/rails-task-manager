Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get 'up' => 'rails/health#show', as: :rails_health_check

  # Defines the root path route ('/')
  # root 'posts#index'

  # afficher la liste des taches
  get 'index', to: 'tasks#index', as: 'index'

  # afficher le datails dans un autre page
  get 'tasks/:id', to: 'tasks#show', as: 'task'

  # add task
  get 'task/new', to: 'tasks#new', as: 'new'
  post "tasks", to: "tasks#create"

  # edit task
  get 'task/:id/edit', to: 'tasks#edit'
  patch 'tasks/:id', to: 'tasks#update'

  # destroy
  delete "tasks/:id", to: "tasks#destroy"

end
