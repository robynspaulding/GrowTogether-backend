Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/children" => "children#index"
  post "/children" => "children#create"
  get "children/:id" => "children#show"
  patch "children/:id" => "children#update"
  delete "children/:id" => "children#destroy"
end
