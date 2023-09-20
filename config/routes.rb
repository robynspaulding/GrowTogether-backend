Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  post "/users" => "users#create"
  post "/sessions" => "sessions#create"

  get "/children" => "children#index"
  post "/children" => "children#create"
  get "children/:id" => "children#show"
  patch "children/:id" => "children#update"
  delete "children/:id" => "children#destroy"

  get "/milestones/:child_id" => "milestones#index" #renders only those milestones belonging to the specific child
  post "/milestones" => "milestones#create"
  get "milestones/:id" => "milestones#show"
  patch "milestones/:id" => "milestones#update"
  delete "milestones/:id" => "milestones#destroy"
end
