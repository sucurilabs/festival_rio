class AddNameColumnToTheater < ActiveRecord::Migration
  def change
    add_column :theaters, :name, :string
  end
end
