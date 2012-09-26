class CreateMoviesActors < ActiveRecord::Migration
  def change
    create_table :movies_actors, :id => false do |t|
      t.integer :movie_id
      t.integer :actor_id
    end
  end
end
