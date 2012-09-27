class CreateCountriesMovies < ActiveRecord::Migration
  def change
    create_table :countries_movies, :id => false do |t|
      t.integer :movie_id
      t.integer :country_id
    end
  end
end
