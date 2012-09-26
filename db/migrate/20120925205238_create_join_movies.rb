class CreateJoinMovies < ActiveRecord::Migration
  def change
    create_table :join_movies do |t|
      t.references :movie
      t.references :user
      t.integer :status

      t.timestamps
    end
    add_index :join_movies, :movie_id
    add_index :join_movies, :user_id
  end
end
