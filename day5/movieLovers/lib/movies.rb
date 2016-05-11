require 'imdb'
require 'pry'

class Movies
  def search(params)
    result = Imdb::Search.new(params)
    movies = result.movies
    movies.each do |movie|
      if movie.poster.nil?
        movies.poster
    end
    end
  end
end
