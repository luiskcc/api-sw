class MoviesController < ApplicationController
  
def index
data = {
"movies": [
{
"id": 1,
"title": 'The Shawshank Redemption',
"link": Rails.application.routes.url_helpers.movie_path(1)
},
{
"id": 2,
"title": 'The Godfather',
"link": Rails.application.routes.url_helpers.movie_path(2)
}
]
}

render json: data
end

  def show

    movie_id = params [:id]
    render json: "Example of a movie with id #{movie_id}"
  end
end
