class MoviesController < ApplicationController
  
def index
data = FetchDataFromSwapi.new('films', '').call


data['results'].map! do |movie|
{ id: movie['episode_id'],
title: movie['title'],
link: Rails.application.routes.url_helpers.movie_path(movie['episode_id']) }
end



render json: data
end

  def show
    

    movie_id = params [:id]
    render json: "Example of a movie with id #{movie_id}"
  end
end
