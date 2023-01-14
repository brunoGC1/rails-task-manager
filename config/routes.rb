Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # list the tasks
  get 'tasks', to: 'tasks#index'

  # show create form
  get 'tasks/new', to: 'tasks#new'

  # show edit the task form
  get 'tasks/:id/edit', to: 'tasks#edit'

  # list one task
  get 'tasks/:id', to: 'tasks#show', as: 'task'

  # create the task
  post 'tasks', to: 'tasks#create'

  # update the task
  patch 'tasks/:id', to: 'tasks#update'

  # Delete the task
  delete 'tasks/:id', to: 'tasks#destroy', as: 'delete'

end
