class JoinMovie < ActiveRecord::Base
  belongs_to :movie_session
  belongs_to :user
  attr_accessible :status
end
