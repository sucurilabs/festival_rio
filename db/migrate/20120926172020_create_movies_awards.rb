class CreateMoviesAwards < ActiveRecord::Migration
  def change
    create_table :movies_awards, :id => false do |t|
      t.integer :movie_id
      t.integer :award_id
    end
  end
end
