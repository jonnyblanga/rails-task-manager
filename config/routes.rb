Rails.application.routes.draw do
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

#read All
get "tasks", to: "tasks#index"

#CREATE, GET THE FORM
get "tasks/new", to: "tasks#new"

#CREATE, POST THE FORM
post "tasks", to: "tasks#create"

# NB: The `show` route needs to be *after* `new` route.

#read ONE
get "tasks/:id", to: "tasks#show", as: :task

#UPDATE, GET THE FORM
get "tasks/:id/edit", to: "tasks#edit", as: :edit_task

#UPDATE, PATCH THE FORM
patch "tasks/:id", to: "tasks#update"

#DELETE
delete "tasks/:id", to: "tasks#destroy"

# resources :tasks
end
