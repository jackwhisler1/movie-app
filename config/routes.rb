Rails.application.routes.draw do
  get "/movies", controller: "movies", action: "all_movies"

  get "/movie/:id", controller: "movies", action: "movie"
end
