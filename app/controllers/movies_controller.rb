class MoviesController < ApplicationController
  
def index
data = FetchDataFromSwapi.new('films', '').call

render json: data
end

  def show

    movie_id = params [:id]
    render json: "Example of a movie with id #{movie_id}"
  end
end
