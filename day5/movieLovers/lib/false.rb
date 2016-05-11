require 'imdb'
require 'pry'

class Movies
  def initialize(_id, _title, _url)
    movies = Imdb::Search.new('star trek')
    @id = movies.id
    @title = movies.title[1]
    @url = movies.url
  end
end
i = Imdb::Search.new('Star Trek')
puts i
