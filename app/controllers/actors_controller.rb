class ActorsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]
  
  def index
    render json: Actor.all
  end

  def create
    actor = Actor.new(
      first_name: actor.params[:first_name],
      last_name: actor.params[:last_name],
      known_for: actor.params[:known_for],
      age: actor.params[:age],
      movie_id: actor.params[:movie_id],
      gender: actor.params[:gender]
    )
    if actor.save
      render json: actor
    else
      render json: actor.errors.full_messages
    end
  end

  def show
    id = params[:id]
    render json: Actor.find(id)
  end

  def update
    actor = Actor.find(params[:id])
    actor.first_name = params[:first_name] || actor.first_name
    actor.last_name = params[:last_name] || actor.last_name
    actor.known_for = params[:known_for] || actor.known_for
    actor.age = actor.params[:age] || actor.age
    actor.gender = actor.params[:gender] || actor.gender
    actor.movie_id = actor.params[movie_id] || actor.movie_id
    if actor.save
      render json: actor
    else
      render json: actor.errors.full_messages
    end
  end

  def destroy
    actor = Actor.find(:id)
    actor.destroy
    render json: {message: "Actor deleted."}
  end
end
