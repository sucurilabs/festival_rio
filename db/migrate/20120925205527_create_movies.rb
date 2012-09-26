class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.references :director
      t.references :category
      t.string :name
      t.text :synopsis
      t.integer :year
      t.string :imdb_url

      t.timestamps
    end
    add_index :movies, :director_id
    add_index :movies, :category_id
  end
end
