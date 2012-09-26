class Localization < ActiveRecord::Base
  attr_accessible :name
  has_many :neighborhoods
end
