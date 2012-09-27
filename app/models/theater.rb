class Theater < ActiveRecord::Base
  belongs_to :neighborhood
  delegate :name, :to => :neighborhood, :prefix => true
  has_many :movie_sessions
  has_many :movies, :through => :movie_sessions

  attr_accessible :name, :address, :number, :address_complement, :stocking, :price, :half_price, :neighborhood
  def self.find_by_name_ignoring_case(theater_name)
    self.where(["LOWER(name) = ?", theater_name.downcase]).last
  end
end
