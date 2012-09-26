class Theater < ActiveRecord::Base
  belongs_to :neighborhood
  has_many :movie_sessions
  has_many :movies, :through => :movie_sessions

  attr_accessible :address, :number
end
