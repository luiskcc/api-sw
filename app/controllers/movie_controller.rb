class MoviesController < ApplicationController
  
  def index
    render json: "Hello world"
  end

  def show

    movie_id = params [:id]
    render json: Example of a movie with id #{movie_id}""
  end
end
