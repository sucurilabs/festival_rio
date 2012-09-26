class CreateAwards < ActiveRecord::Migration
  def change
    create_table :awards do |t|
      t.references :movie
      t.string :name
      t.integer :type

      t.timestamps
    end
    add_index :awards, :movie_id
  end
end
