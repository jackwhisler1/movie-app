Rails.application.routes.draw do
  # Movies routes
  get "/movies" => "movies#index"

  post "/movies" => "movies#create"

  get "/movies/:id", controller: "movies", action: "show"

  patch "/movies/:id" => "movies#update"

  delete "/movies/:id" => "movies#destroy"



  # Actors routes
  get "/actors" => "actors#index"
  
  post "/actors", controller: "actors", action: "create"

  get "/actors/:id", controller: "actors", action: "show"

  patch "/actors/:id" => "actors#update"

  delete "/actors/:id" => "actors#destroy"

  # User routes
  post "/users" => "users#create"

  # Sessions

  post "/sessions" => "sessions#create"


end
