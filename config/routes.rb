Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # READ (list)

  get 'tasks', to: "tasks#index"

  # # CREATE

  get 'tasks/new', to: "tasks#new"
  post 'tasks', to: "tasks#create"

  # # Show one task

  get 'tasks/:id', to: "tasks#show", as: :task

  # # UPDATE
  # # Form to edit the restaurant data
  get 'tasks/:id/edit', to: "tasks#edit", as: :task_edit
  patch 'tasks/:id', to: "tasks#update"

  # # DESTROY
  delete 'tasks/:id', to: "tasks#destroy"

  # /restaurants/3
  # params[:id]
end
