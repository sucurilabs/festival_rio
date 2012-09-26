class Theater < ActiveRecord::Base
  belongs_to :neighborhood
  delegate :name, :to => :neighborhood, :prefix => true
  has_many :movie_sessions
  has_many :movies, :through => :movie_sessions

  attr_accessible :name, :address, :number, :address_complement, :stocking, :price, :half_price, :neighborhood
end
