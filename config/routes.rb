Rails.application.routes.draw do
  get "/movies", controller: "movies", action: "index"
  get "/actors" => "actors#index"

  get "/movie/:id", controller: "movies", action: "show"

  get "/actor/:id", controller: "actors", action: "show"
  get "/actor", controller: "actors", action: "show"
  post "/actor", controller: "actors", action: "show"

end
