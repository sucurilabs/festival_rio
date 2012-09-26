class Country < ActiveRecord::Base
  has_many :actors
  has_and_belongs_to_many :movies
  attr_accessible :name
end
