class HabtmToMovies < ActiveRecord::Migration
  def change
    drop_table :movies_actors
    drop_table :movies_genres
    create_table :actors_movies, :id => false do |t|
      t.integer :movie_id
      t.integer :actor_id
    end
    create_table :genres_movies, :id => false do |t|
      t.integer :movie_id
      t.integer :genre_id
    end
  end
end
