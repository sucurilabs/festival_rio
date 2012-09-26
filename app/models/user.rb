class User < ActiveRecord::Base
  has_many :join_movies
  has_many :movie_sessions, :through => :join_movies
  has_many :movies, :through => :movie_sessions 
  attr_accessible :email, :name
end
