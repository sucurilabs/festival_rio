class AddImdbFieldsToMovie < ActiveRecord::Migration
  def change
    add_column :movies, :imdb_votes, :integer
    add_column :movies, :imdb_rating, :float
  end
end
