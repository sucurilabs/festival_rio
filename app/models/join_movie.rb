class JoinMovie < ActiveRecord::Base
  belongs_to :movie
  belongs_to :user
  attr_accessible :status
end
