class CreateDirectors < ActiveRecord::Migration
  def change
    create_table :directors do |t|
      t.references :country
      t.string :name
      t.string :imdb_url

      t.timestamps
    end
    add_index :directors, :country_id
  end
end
