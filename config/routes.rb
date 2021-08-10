Rails.application.routes.draw do
  # See a list of all tasks
  get "/tasks", to: "tasks#index", as: :tasks
  # See just one task
  get "/tasks/:id", to: "tasks#show", as: :task
  # See a new form
  get "/tasks/new", to: "tasks#new", as: :new_task

  # Submit the new form
  post "/tasks", to: "tasks#create"

  # # See a form to edit
  get "/tasks/:id/edit", to: "tasks#edit", as: :edit_task

  #submit the edit form
  patch "/tasks/:id", to: "tasks#update"

  delete "/tasks/:id", to: "tasks#destroy"
end
