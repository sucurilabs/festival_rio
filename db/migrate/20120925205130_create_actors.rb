class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      t.references :country
      t.string :name
      t.string :imdb_url

      t.timestamps
    end
    add_index :actors, :country_id
  end
end
