class User < ActiveRecord::Base
  has_many :join_movies
  has_many :movies, :through => :join_movies 
  attr_accessible :email, :name
end
