class MoviesController < ApplicationController
  
  def all_movies
    #Lovely randomized hipster buzzword plots
    render json: Movie.all
  end

  def movie
    require "http"
    id = params[:id]
    render json: Movie.find(id)
  end

end
