class Actor < ActiveRecord::Base
  belongs_to :country
  has_and_belongs_to_many :movies
  attr_accessible :imdb_url, :name
end
