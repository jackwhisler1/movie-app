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
    movie = Movie.new(
      title: params[:title],
      year: params[:year],
      plot: params[:plot]
    )
    movie.save
    render json: movie
  end

  def update
    movie = Movie.find(params[:id])
    movie.title = params[:title] || movie.title
    movie.year = params[:year] || movie.year
    movie.plot = params[:plot] || movie.plot
    render json: movie
  end

  def destroy
    movie = Movie.find(:id)
    movie.destroy
    render json: {message: "Movie deleted."}
  end

end
