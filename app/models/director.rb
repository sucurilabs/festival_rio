class Director < ActiveRecord::Base
  belongs_to :country
  has_many :movies
  attr_accessible :imdb_url, :name
end
