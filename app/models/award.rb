class Award < ActiveRecord::Base
  belongs_to :movie
  attr_accessible :name, :type
end
