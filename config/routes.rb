Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  post "/users" => "users#create"
  get "/users" => "users#index"
  post "/sessions" => "sessions#create"

  get "/children" => "children#index"
  post "/children" => "children#create"
  get "/children/:id" => "children#show"
  put "/children/:id" => "children#update"
  delete "/children/:id" => "children#destroy"

  get "/milestones/:child_id" => "milestones#index" #renders only those milestones belonging to the specific child
  post "/milestones" => "milestones#create"
  get "/milestones/:id" => "milestones#show"
  put "/milestones/:id" => "milestones#update"
  delete "/milestones/:id" => "milestones#destroy"


  get "/favorites" => "favorites#index"
  post "/favorites" => "favorites#create"
  delete "/favorites/:id" => "favorites#destroy"

  get "/fetch_data" => "feed_data#fetch_data"

  get "/reminders" => "reminders#index"
  post "/reminders" => "reminders#create"
  get "/reminders/:id" => "reminders#show"
  put "/reminders/:id" => "reminders#update"
  delete "/reminders/:id" => "reminders#destroy"

  get "/child_photos/:child_id" => "photos#index_by_child" 
  get "/milestone_photos/:milestone_id" => "photos#index_by_milestone"
  post "/photos" => "photos#create"
  get "/photos/:id" => "photos#show"
  put "/photos/:id" => "photos#update"
  delete "/photos/:id" => "photos#destroy"

  post 'send_email' => 'emails#send_email'
  
end
