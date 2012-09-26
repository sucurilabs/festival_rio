class CreateMoviesContries < ActiveRecord::Migration
  def change
    create_table :movies_contries, :id => false do |t|
      t.integer :movie_id
      t.integer :contry_id
    end
  end
end
