require File.expand_path '../spec_helper.rb', __FILE__
require 'imdb'

RSpec.describe 'test of server' do
  it describe 'see if you collect the parameters correctly' do
    i = Imdb::Search.new('Star Trek')
    expect(i.movies[0].title).to eq('Star Trek (2009)')
  end
end

RSpec.describe 'test of server' do
  it describe 'ver si son 9 resultados' do
    i = Imdb::Search.new('Star Trek')
    expect(i.movies[0..8].to eq(9)
  end
end
