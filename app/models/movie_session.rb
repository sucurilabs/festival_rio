class MovieSession < ActiveRecord::Base
  belongs_to :theater
  belongs_to :movie
  attr_accessible :date, :end_time, :start_time
end
