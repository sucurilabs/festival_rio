class Neighborhood < ActiveRecord::Base
  belongs_to :localization
  has_many :theaters
  attr_accessible :name, :localization
end
