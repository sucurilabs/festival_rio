class CreateMoviesFestivals < ActiveRecord::Migration
  def change
    drop_table :movies_awards
    create_table :movies_festivals, :id => false do |t|
      t.integer :movie_id
      t.integer :festival_id
    end
  end
end
