class MoviesController < ApplicationController
  
  def index
    #Lovely randomized hipster buzzword plots
    render json: Movie.all
  end

  def show
    id = params[:id]
    render json: Movie.find(id)
  end

  def create
    id = params[:id]
    render json: Movie
  end

end
