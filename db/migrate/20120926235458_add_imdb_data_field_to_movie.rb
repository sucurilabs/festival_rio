class AddImdbDataFieldToMovie < ActiveRecord::Migration
  def change
    add_column :movies, :imdb_data, :text
  end
end
