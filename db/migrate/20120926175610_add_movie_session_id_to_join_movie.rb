class AddMovieSessionIdToJoinMovie < ActiveRecord::Migration
  def change
    remove_column :join_movies, :movie_id
    add_column :join_movies, :movie_session_id, :integer
  end
end
