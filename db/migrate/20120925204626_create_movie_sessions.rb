class CreateMovieSessions < ActiveRecord::Migration
  def change
    create_table :movie_sessions do |t|
      t.references :theater
      t.references :movie
      t.time :start_time
      t.time :end_time
      t.date :date

      t.timestamps
    end
    add_index :movie_sessions, :theater_id
    add_index :movie_sessions, :movie_id
  end
end
