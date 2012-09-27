class Movie < ActiveRecord::Base
  has_many :movie_sessions
  has_many :theaters, :through => :movie_sessions
  has_many :awards
  has_and_belongs_to_many :actors
  has_and_belongs_to_many :countries
  has_and_belongs_to_many :festivals
  has_and_belongs_to_many :genres
  belongs_to :director
  belongs_to :category
  attr_accessible :imdb_url, :name, :synopsis, :year, :actors, :imdb_data

  def imdb
    begin
      ActiveSupport::JSON.decode(self.imdb_data)
    rescue
      {}
    end
  end

  def urlized_name
    self.name.parameterize.gsub("-", "+")
  end

end
