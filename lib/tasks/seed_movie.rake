require 'movie_seed'
namespace :seed do
    desc "Seed movies"
    task :movies => :environment do
        MovieSeed.new(411)
    end
    desc "Seed movies with imdb data"
    task :imdb => :environment do
        MovieSeed.imdb_seed
    end
end